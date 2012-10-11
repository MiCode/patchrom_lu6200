.class public Lcom/android/settings_ex/SoundSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;


# instance fields
.field private JModelInfo:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private category:Landroid/preference/PreferenceCategory;

.field private cr:Landroid/content/ContentResolver;

.field private emergencyTonePreference:Landroid/preference/ListPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLGNotificationPreference:Landroid/preference/Preference;

.field private mLGRingtonePreference:Landroid/preference/Preference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mObserver:Landroid/database/ContentObserver;

.field private mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mRingtone_with_Vibration:Landroid/preference/CheckBoxPreference;

.field private mRoamingSound:Landroid/preference/CheckBoxPreference;

.field private mSmart_ringtone:Landroid/preference/CheckBoxPreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundProfilePreference:Landroid/preference/ListPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSubNotificationPreference:Landroid/preference/Preference;

.field private mSubRingtonePreference:Landroid/preference/Preference;

.field private mTimedSilent:Lcom/android/settings_ex/QuietTimeSwitchPreference;

.field private mTouchSoundsRunnable:Ljava/lang/Runnable;

.field private mVCRingtonePreference:Landroid/preference/Preference;

.field private mVibrateTypePreference:Landroid/preference/Preference;

.field private mVibrator:Landroid/os/Vibrator;

.field private ringerMode:I

.field sound_profile_entry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sound_profile_value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private touchFeedback_system_category:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 267
    new-instance v0, Lcom/android/settings_ex/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SoundSettings$1;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    new-instance v0, Lcom/android/settings_ex/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SoundSettings$2;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 740
    new-instance v0, Lcom/android/settings_ex/SoundSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/SoundSettings$5;-><init>(Lcom/android/settings_ex/SoundSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mObserver:Landroid/database/ContentObserver;

    .line 1290
    new-instance v0, Lcom/android/settings_ex/SoundSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SoundSettings$6;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private EasySettingMenu()V
    .locals 4

    .prologue
    .line 1076
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mTimedSilent:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1078
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ring_volume"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1079
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1080
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1081
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->touchFeedback_system_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1082
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0808e0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :goto_0
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NullPointException] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private UpdateSoundEffect(Z)V
    .locals 1
    .parameter "isSoundEffect"

    .prologue
    .line 1095
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 1100
    :goto_0
    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SoundSettings;->UpdateSoundEffect(Z)V

    return-void
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;ZI)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 972
    .line 973
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 977
    if-eqz p1, :cond_d

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_d

    .line 978
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 980
    const-string v2, "settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 981
    if-eqz p2, :cond_f

    .line 982
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 984
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p3}, Lcom/android/settings_ex/SoundSettings;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZI)Ljava/lang/String;

    move-result-object v0

    .line 985
    const v1, 0x10403ee

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    :goto_0
    if-nez v0, :cond_0

    .line 1055
    const v0, 0x10403f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1057
    if-nez v0, :cond_0

    .line 1058
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    :cond_0
    if-eqz v6, :cond_1

    .line 1064
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1069
    :cond_1
    :goto_1
    return-object v0

    .line 989
    :cond_2
    :try_start_1
    const-string v2, "drm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 990
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 996
    :cond_3
    :goto_2
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 997
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 998
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1063
    if-eqz v6, :cond_1

    .line 1064
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 991
    :cond_4
    :try_start_2
    const-string v2, "media"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 992
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_2

    .line 1004
    :cond_5
    if-ne p3, v8, :cond_6

    .line 1005
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 1021
    :goto_3
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const-string v3, "_display_name =? AND mime_type =? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v7, "application/ogg"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1028
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_c

    .line 1031
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1032
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1006
    :cond_6
    if-ne p3, v7, :cond_7

    .line 1007
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    .line 1008
    :cond_7
    const/4 v1, 0x4

    if-ne p3, v1, :cond_8

    .line 1009
    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    .line 1011
    :cond_8
    const/16 v1, 0x8

    if-ne p3, v1, :cond_9

    .line 1012
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    .line 1013
    :cond_9
    const/16 v1, 0x10

    if-ne p3, v1, :cond_a

    .line 1014
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    .line 1015
    :cond_a
    const/16 v1, 0x20

    if-ne p3, v1, :cond_b

    .line 1016
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    .line 1019
    :cond_b
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    .line 1035
    :cond_c
    const-string v0, "SoundSettings"

    const-string v1, "It has not default contents !! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const v0, 0x10403f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1050
    :cond_d
    const v0, 0x10403ef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    .line 1063
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_e

    .line 1064
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0

    :cond_f
    move-object v0, v6

    goto/16 :goto_0
.end method

.method private initTimedSilentModeSummary()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mTimedSilent:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->setChecked(Z)V

    .line 1284
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mTimedSilent:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->SetQuietTimeSummary()V

    .line 1285
    return-void
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 1090
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1091
    return-void
.end method

.method private updateAllPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 678
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 679
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->sound_profile_value:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    .line 681
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    iget v3, p0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 689
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dtmf_tone"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 692
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sound_effects_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 695
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 696
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lg_eri_set"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 700
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "smart_ringtone"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 705
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_sounds_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 710
    return-void

    :cond_3
    move v0, v2

    .line 689
    goto :goto_0

    :cond_4
    move v0, v2

    .line 692
    goto :goto_1

    :cond_5
    move v0, v2

    .line 696
    goto :goto_2

    :cond_6
    move v0, v2

    .line 700
    goto :goto_3

    :cond_7
    move v0, v2

    .line 705
    goto :goto_4

    :cond_8
    move v1, v2

    .line 708
    goto :goto_5
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 6
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 911
    if-nez p2, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 914
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 917
    const-string v0, "content://media/internal/audio/media/3"

    .line 918
    .local v0, DEFAULT_RINGTONE:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 941
    .local v2, ringtoneUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 942
    .local v3, summary:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    invoke-static {v1, v2, v4, p1}, Lcom/android/settings_ex/SoundSettings;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZI)Ljava/lang/String;

    move-result-object v3

    .line 967
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p3, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 7
    .parameter "force"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 797
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    .line 801
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 802
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 804
    const-string v2, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateState] ##### ringerMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 808
    .local v1, vibrateMode:I
    const-string v2, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateState] ##### vibrateMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v5, p0, Lcom/android/settings_ex/SoundSettings;->mRingtone_with_Vibration:Landroid/preference/CheckBoxPreference;

    if-ne v1, v3, :cond_6

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 812
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    .line 822
    iget v2, p0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_7

    move v0, v3

    .line 824
    .local v0, silentOrVibrateMode:Z
    :goto_2
    if-eqz v0, :cond_9

    .line 826
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "category_calls_and_notification"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 827
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "category_calls_and_notification"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 833
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "dtmf_tone"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 834
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "sound_effects"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 835
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "lock_sounds"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 838
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "smart_ringtone_sound"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 839
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "smart_ringtone_sound"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 842
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "vibrate_type"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 843
    iget v2, p0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    if-ne v2, v3, :cond_8

    .line 844
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "vibrate_type"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 882
    :cond_4
    :goto_3
    const-string v2, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateState_1] isNorepeatcase() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v6}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatCase()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const-string v2, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateState_2] isNorepeatEndtimecase() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v6}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatEndTimeCase()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-string v2, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateState_3] isSilentTime() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v6}, Lcom/android/settings_ex/QuietTimeInfo;->isSilentTime()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v2, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateState_4] isNorepeatStartTimeCase() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v6}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatStartTimeCase()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v2, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateState_5] isSaveTimeCurrentTime_Intaval() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v6}, Lcom/android/settings_ex/QuietTimeInfo;->isSaveTimeCurrentTime_Interval()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "timed_silent"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 890
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatCase()Z

    move-result v2

    if-ne v3, v2, :cond_5

    .line 891
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatEndTimeCase()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->isSaveTimeCurrentTime_Interval()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatStartTimeCase()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->isSilentTime()Z

    move-result v2

    if-ne v3, v2, :cond_d

    .line 895
    const-string v2, "SoundSettings"

    const-string v3, "[updateState_6] ####### QuietTime DB OFF set!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/QuietTimeInfo;->setDBQuietTimeState(I)V

    .line 904
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mTimedSilent:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->setCheckedUpdate()V

    goto/16 :goto_0

    .end local v0           #silentOrVibrateMode:Z
    :cond_6
    move v2, v4

    .line 809
    goto/16 :goto_1

    :cond_7
    move v0, v4

    .line 822
    goto/16 :goto_2

    .line 846
    .restart local v0       #silentOrVibrateMode:Z
    :cond_8
    iget v2, p0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    if-eq v2, v3, :cond_4

    .line 847
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "vibrate_type"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 854
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "category_calls_and_notification"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 855
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "category_calls_and_notification"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 861
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "dtmf_tone"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 862
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "sound_effects"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 863
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "lock_sounds"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 866
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "smart_ringtone_sound"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 867
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "smart_ringtone_sound"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 871
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "vibrate_type"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 873
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mRingtone_with_Vibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 874
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "vibrate_type"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 876
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "vibrate_type"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 898
    :cond_d
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatEndTimeCase()Z

    move-result v2

    if-ne v3, v2, :cond_5

    .line 899
    const-string v2, "SoundSettings"

    const-string v3, "[updateState_7] ####### QuietTime DB OFF set!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/QuietTimeInfo;->setDBQuietTimeState(I)V

    goto/16 :goto_4
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1275
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1276
    if-nez p2, :cond_0

    .line 1277
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Result] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->initTimedSilentModeSummary()V

    .line 1280
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 349
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 352
    new-instance v13, Landroid/os/Vibrator;

    invoke-direct {v13}, Landroid/os/Vibrator;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v13, :cond_0

    .line 357
    const-string v13, "storage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v13, v14}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 362
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mContext:Landroid/content/Context;

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings_ex/SoundSettings;->cr:Landroid/content/ContentResolver;

    .line 369
    .local v11, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->cr:Landroid/content/ContentResolver;

    const-string v14, "content://settings/system"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 371
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 374
    .local v1, activePhoneType:I
    const-string v13, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 376
    const v13, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->addPreferencesFromResource(I)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const-string v14, "sound_profile"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 383
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    .line 384
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->sound_profile_value:Ljava/util/ArrayList;

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090014

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 397
    const-string v13, "ro.build.target_operator"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "VZW"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    const v14, 0x7f0802a5

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    const v14, 0x7f0802a5

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0808de

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 401
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0802ac

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const/4 v14, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0808dd

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 406
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->sound_profile_value:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090015

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->sound_profile_value:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSoundProfilePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/SoundSettings;->ringerMode:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 415
    const-string v13, "ringtone_with_vibration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mRingtone_with_Vibration:Landroid/preference/CheckBoxPreference;

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mRingtone_with_Vibration:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 418
    const/4 v13, 0x1

    const-string v14, "DCM"

    invoke-static {v14}, Lcom/android/settings_ex/Utils;->istargetOperator(Ljava/lang/String;)Z

    move-result v14

    if-ne v13, v14, :cond_2

    .line 419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mRingtone_with_Vibration:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0802ac

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0802a4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 426
    :cond_2
    const-string v13, "smart_ringtone_sound"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    .line 427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 431
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    const-string v13, "smart_ringtone"

    const/4 v15, 0x1

    invoke-static {v11, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_10

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 438
    new-instance v13, Lcom/android/settings_ex/QuietTimeInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/settings_ex/QuietTimeInfo;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    .line 439
    const-string v13, "timed_silent"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings_ex/QuietTimeSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mTimedSilent:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mTimedSilent:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v14}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->setChecked(Z)V

    .line 441
    const-string v13, "ro.product.device"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "u0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mTimedSilent:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 445
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->initTimedSilentModeSummary()V

    .line 449
    const-string v13, "dtmf_tone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 450
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v13, "dtmf_tone"

    const/4 v15, 0x1

    invoke-static {v11, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_11

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 453
    const-string v13, "sound_effects"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v13, "sound_effects_enabled"

    const/4 v15, 0x0

    invoke-static {v11, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 461
    const-string v13, "Eri_sounds"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    const-string v13, "lg_eri_set"

    const/4 v15, 0x0

    invoke-static {v11, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_13

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 468
    const-string v13, "haptic_feedback"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 469
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v13, "haptic_feedback_enabled"

    const/4 v15, 0x1

    invoke-static {v11, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_14

    const/4 v13, 0x1

    :goto_4
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 472
    const-string v13, "lock_sounds"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 473
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 474
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v13, "lockscreen_sounds_enabled"

    const/4 v15, 0x1

    invoke-static {v11, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_15

    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 477
    const-string v13, "ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 478
    const-string v13, "notification_sound"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 480
    const-string v13, "lg_ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    .line 481
    const-string v13, "lg_notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    .line 484
    const-string v13, "vt_ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    .line 488
    const-string v13, "sub_ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    .line 489
    const-string v13, "sub_notification_sound"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    .line 491
    const-string v13, "category_calls_and_notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    .line 492
    const-string v13, "category_touchfeedback_System"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->touchFeedback_system_category:Landroid/preference/PreferenceCategory;

    .line 495
    const-string v13, "vibrate_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    .line 498
    const-string v13, "ro.build.target_operator"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "SPR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "ro.build.target_operator"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "BM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "ro.build.target_operator"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "SPRINT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 499
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 503
    :cond_5
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v6

    .line 505
    .local v6, isDualSim:Z
    if-nez v6, :cond_16

    .line 506
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    if-eqz v13, :cond_6

    .line 508
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 519
    :cond_6
    :goto_6
    const-string v13, "ro.build.target_operator"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "KT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 520
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 524
    :cond_7
    const-string v13, "ro.build.product"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->JModelInfo:Ljava/lang/String;

    .line 526
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->JModelInfo:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x6a

    if-eq v13, v14, :cond_8

    .line 527
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 531
    :cond_8
    const-string v13, "ro.device.hapticfeedback"

    const-string v14, "1"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, hapticfeedback:Ljava/lang/String;
    const-string v13, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    invoke-virtual {v13}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "0"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 535
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    :cond_a
    const-string v13, "ro.build.target_operator"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "VZW"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 548
    :cond_b
    const-string v13, "ro.build.target_operator"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "SKT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string v13, "ro.build.target_operator"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "KT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string v13, "ro.build.target_operator"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "LGU"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const-string v14, "vibrate_volume"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 557
    :cond_c
    const/4 v13, 0x2

    if-eq v13, v1, :cond_17

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const-string v14, "emergency_tone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 577
    :cond_d
    :goto_7
    const-string v13, "sound_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 579
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v14, "musicfx"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 580
    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v4, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 583
    .local v8, p:Landroid/content/pm/PackageManager;
    const/16 v13, 0x200

    invoke-virtual {v8, v4, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 585
    .local v12, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_e

    .line 593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 596
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_18

    .line 597
    sget-object v2, Lcom/android/settings_ex/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_8
    if-ge v5, v7, :cond_18

    aget-object v10, v2, v5

    .line 598
    .local v10, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 599
    .local v9, pref:Landroid/preference/Preference;
    if-eqz v9, :cond_f

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 597
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 431
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #hapticfeedback:Ljava/lang/String;
    .end local v4           #i:Landroid/content/Intent;
    .end local v5           #i$:I
    .end local v6           #isDualSim:Z
    .end local v7           #len$:I
    .end local v8           #p:Landroid/content/pm/PackageManager;
    .end local v9           #pref:Landroid/preference/Preference;
    .end local v10           #prefKey:Ljava/lang/String;
    .end local v12           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 451
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 455
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 464
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 470
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 474
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 513
    .restart local v6       #isDualSim:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    const v14, 0x7f0802c6

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setTitle(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    const v14, 0x7f0802c8

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_6

    .line 561
    .restart local v3       #hapticfeedback:Ljava/lang/String;
    :cond_17
    const/4 v13, 0x2

    if-ne v13, v1, :cond_d

    .line 562
    const-string v13, "emergency_tone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->emergencyTonePreference:Landroid/preference/ListPreference;

    .line 563
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->emergencyTonePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "emergency_tone"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->emergencyTonePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_7

    .line 605
    .restart local v4       #i:Landroid/content/Intent;
    .restart local v8       #p:Landroid/content/pm/PackageManager;
    .restart local v12       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_18
    new-instance v13, Lcom/android/settings_ex/SoundSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings_ex/SoundSettings$3;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 644
    new-instance v13, Lcom/android/settings_ex/SoundSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings_ex/SoundSettings$4;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mTouchSoundsRunnable:Ljava/lang/Runnable;

    .line 657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    if-eqz v13, :cond_19

    .line 658
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 660
    const-string v13, "ro.product.device"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "u0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    .line 661
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 671
    :cond_19
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.easysettings.SOUND_SETTING"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->EasySettingMenu()V

    .line 674
    :cond_1a
    return-void

    .line 664
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_9
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 782
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 785
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 792
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 769
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 771
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 773
    const-string v1, "ring_volume"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/RingerVolumePreference;

    .line 774
    .local v0, ringerVolumePref:Lcom/android/settings_ex/RingerVolumePreference;
    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/android/settings_ex/RingerVolumePreference;->RingStop()V

    .line 778
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1231
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1232
    const-string v1, "emergency_tone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1234
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1235
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_tone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    :cond_0
    :goto_0
    return v3

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    const-string v1, "SoundSettings"

    const-string v2, "could not persist emergency tone setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1245
    :cond_1
    const-string v1, "sound_profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    :try_start_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1248
    if-nez v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1262
    :catch_1
    move-exception v0

    .line 1263
    const-string v1, "SoundSettings"

    const-string v2, "could not persist emergency tone setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1251
    :cond_2
    if-ne v0, v3, :cond_3

    .line 1252
    :try_start_2
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1255
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 1258
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1107
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 1108
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    move v0, v1

    .line 1227
    :cond_2
    return v0

    .line 1112
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 1114
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1127
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1132
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 1133
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1136
    :cond_9
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-eq p2, v3, :cond_2

    .line 1139
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mRingtone_with_Vibration:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_c

    .line 1140
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mRingtone_with_Vibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    move v2, v1

    .line 1142
    :cond_a
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1144
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1148
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "vibrate_type"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1149
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mRingtone_with_Vibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1150
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "vibrate_type"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1153
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "vibrate_type"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1160
    :cond_c
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_e

    .line 1162
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_ringtone"

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v1

    :cond_d
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1167
    :cond_e
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_f

    .line 1168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1169
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings_ex"

    const-string v4, "com.android.settings_ex.RingtonePicker"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1170
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1171
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1175
    :cond_f
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_10

    .line 1176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1177
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings_ex"

    const-string v5, "com.android.settings_ex.RingtonePicker"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1178
    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1179
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1181
    :cond_10
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_11

    .line 1182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1183
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings_ex"

    const-string v4, "com.android.settings_ex.RingtonePicker"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1184
    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1185
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1187
    :cond_11
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_12

    .line 1188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1189
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings_ex"

    const-string v4, "com.android.settings_ex.RingtonePicker"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1190
    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1191
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1194
    :cond_12
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_13

    .line 1195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1196
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings_ex"

    const-string v4, "com.android.settings_ex.RingtonePicker"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1197
    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1203
    :cond_13
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_15

    .line 1204
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lg_eri_set"

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    move v0, v1

    :cond_14
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1210
    :cond_15
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mTimedSilent:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    if-ne p2, v2, :cond_16

    .line 1211
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1212
    const-string v3, "com.android.settings_ex"

    const-string v4, "com.android.settings_ex.TimedSilentSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1220
    :cond_16
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 1221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1222
    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.VibrateTypePreference"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 715
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 717
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings_ex/SoundSettings;->updateState(Z)V

    .line 718
    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->lookupRingtoneNames()V

    .line 719
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 721
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 723
    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->updateAllPreferences()V

    .line 731
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 732
    .local v1, filter1:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 737
    return-void
.end method
