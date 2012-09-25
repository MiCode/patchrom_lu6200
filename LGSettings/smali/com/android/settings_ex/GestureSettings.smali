.class public Lcom/android/settings_ex/GestureSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "GestureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final DB_TABLE_GESTURESETTING:[Ljava/lang/String;


# instance fields
.field private hasFacing_SENSOR:Z

.field private hasOrient_SENSOR:Z

.field private hasTAB_SENSOR:Z

.field private isLGE_VIDEO_PLYAER:Z

.field private mAlarmPreferences:Landroid/preference/CheckBoxPreference;

.field private mCallPreferences:Landroid/preference/CheckBoxPreference;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mGalleryBrowsePreferences:Landroid/preference/CheckBoxPreference;

.field private mGalleryPanningPreferences:Landroid/preference/CheckBoxPreference;

.field private mHelpPreferences:Landroid/preference/Preference;

.field private mHomePreferences:Landroid/preference/CheckBoxPreference;

.field private mIMEPreferences:Landroid/preference/CheckBoxPreference;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTiltPreferences:Landroid/preference/Preference;

.field private mVideoPreferences:Landroid/preference/CheckBoxPreference;

.field private mview:Landroid/view/View;

.field private parent:Landroid/preference/PreferenceScreen;

.field private test_use_default:Z

.field private test_value:I

.field private testing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gesture_home_rearrange"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gesture_voice_call"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gesture_alarm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gesture_video_player"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gesture_image_panning"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gesture_image_viewer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gesture_all_editor"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/android/settings_ex/GestureSettings;->isLGE_VIDEO_PLYAER:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings_ex/GestureSettings;->hasTAB_SENSOR:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/settings_ex/GestureSettings;->hasFacing_SENSOR:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/settings_ex/GestureSettings;->hasOrient_SENSOR:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings_ex/GestureSettings;->testing:Z

    .line 80
    iput v0, p0, Lcom/android/settings_ex/GestureSettings;->test_value:I

    .line 81
    iput-boolean v0, p0, Lcom/android/settings_ex/GestureSettings;->test_use_default:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/GestureSettings;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/GestureSettings;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/GestureSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/settings_ex/GestureSettings;->testing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/GestureSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings_ex/GestureSettings;->test_value:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/GestureSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/settings_ex/GestureSettings;->test_value:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/settings_ex/GestureSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/settings_ex/GestureSettings;->test_use_default:Z

    return p1
.end method

.method private checkModel()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "lgp930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryBrowsePreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 195
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cayman"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryPanningPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 199
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryPanningPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 202
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryBrowsePreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 204
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mIMEPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 206
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 209
    :cond_3
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_dcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryPanningPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 211
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 213
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryPanningPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 214
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryBrowsePreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 216
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mIMEPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 218
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private checkOperator()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 159
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    :cond_0
    return-void
.end method

.method private checkSensor()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 228
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "sensor"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/GestureSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 230
    .local v3, sensorManager:Landroid/hardware/SensorManager;
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 232
    .local v2, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 235
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v5, 0x16

    if-ne v4, v5, :cond_1

    .line 236
    iput-boolean v7, p0, Lcom/android/settings_ex/GestureSettings;->hasTAB_SENSOR:Z

    .line 232
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_2

    .line 238
    iput-boolean v7, p0, Lcom/android/settings_ex/GestureSettings;->hasFacing_SENSOR:Z

    goto :goto_1

    .line 239
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 240
    iput-boolean v7, p0, Lcom/android/settings_ex/GestureSettings;->hasOrient_SENSOR:Z

    goto :goto_1

    .line 246
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings_ex/GestureSettings;->hasOrient_SENSOR:Z

    if-eqz v4, :cond_4

    .line 247
    iput-boolean v6, p0, Lcom/android/settings_ex/GestureSettings;->hasOrient_SENSOR:Z

    .line 253
    :goto_2
    iget-boolean v4, p0, Lcom/android/settings_ex/GestureSettings;->hasTAB_SENSOR:Z

    if-eqz v4, :cond_5

    .line 254
    iput-boolean v6, p0, Lcom/android/settings_ex/GestureSettings;->hasTAB_SENSOR:Z

    .line 260
    :goto_3
    iget-boolean v4, p0, Lcom/android/settings_ex/GestureSettings;->hasFacing_SENSOR:Z

    if-eqz v4, :cond_6

    .line 261
    iput-boolean v6, p0, Lcom/android/settings_ex/GestureSettings;->hasFacing_SENSOR:Z

    .line 267
    :goto_4
    return-void

    .line 249
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 250
    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mTiltPreferences:Landroid/preference/Preference;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_2

    .line 256
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mIMEPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 257
    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryBrowsePreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_3

    .line 263
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 264
    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 265
    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_4
.end method

.method private init_UI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mTiltPreferences:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 121
    :goto_0
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    :goto_1
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 127
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    :goto_2
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    :goto_3
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 137
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryPanningPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    :goto_4
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryBrowsePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    :goto_5
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mIMEPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    :goto_6
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mTiltPreferences:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    .line 139
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryPanningPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    .line 144
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryBrowsePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5

    .line 149
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mIMEPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/GestureSettings;->parent:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/GestureSettings;->parent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 397
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 398
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 320
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->addPreferencesFromResource(I)V

    .line 88
    const-string v0, "gesture_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/GestureSettings;->parent:Landroid/preference/PreferenceScreen;

    .line 89
    const-string v0, "gesture_homescreen"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    .line 90
    const-string v0, "tilt_sensitivity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mTiltPreferences:Landroid/preference/Preference;

    .line 91
    const-string v0, "gesture_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    .line 92
    const-string v0, "gesture_alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    .line 93
    const-string v0, "gesture_video"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    .line 94
    const-string v0, "gesture_gallery_panning"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryPanningPreferences:Landroid/preference/CheckBoxPreference;

    .line 95
    const-string v0, "gesture_gallery"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryBrowsePreferences:Landroid/preference/CheckBoxPreference;

    .line 96
    const-string v0, "gesture_input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mIMEPreferences:Landroid/preference/CheckBoxPreference;

    .line 97
    const-string v0, "gesture_help"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/GestureSettings;->mHelpPreferences:Landroid/preference/Preference;

    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/GestureSettings;->init_UI()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings_ex/GestureSettings;->checkOperator()V

    .line 101
    invoke-direct {p0}, Lcom/android/settings_ex/GestureSettings;->checkSensor()V

    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/GestureSettings;->checkModel()V

    .line 103
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 283
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 284
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v4, v1, v3

    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mTiltPreferences:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 313
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    move v1, v3

    .line 284
    goto :goto_0

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mTiltPreferences:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 289
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    .line 290
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    .line 292
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    .line 293
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_3

    .line 295
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_9

    .line 296
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_4
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_4

    .line 298
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryPanningPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_b

    .line 299
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryPanningPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_5
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    .line 301
    :cond_b
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryBrowsePreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_d

    .line 302
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mGalleryBrowsePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_6
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_c
    move v2, v3

    goto :goto_6

    .line 304
    :cond_d
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mIMEPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_f

    .line 305
    sget-object v1, Lcom/android/settings_ex/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v1, v1, v4

    iget-object v4, p0, Lcom/android/settings_ex/GestureSettings;->mIMEPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    :goto_7
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    move v2, v3

    goto :goto_7

    .line 307
    :cond_f
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings;->mTiltPreferences:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->openCustomDialog()V

    goto/16 :goto_1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 412
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 272
    iget-boolean v0, p0, Lcom/android/settings_ex/GestureSettings;->testing:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->openCustomDialog()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/GestureSettings;->testing:Z

    .line 277
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 417
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 423
    return-void
.end method

.method openCustomDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 328
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    .local v0, customDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0806ed

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 331
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04006f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mview:Landroid/view/View;

    .line 332
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mview:Landroid/view/View;

    const v4, 0x7f0b0117

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 333
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mview:Landroid/view/View;

    const v4, 0x7f0b0115

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;

    .line 334
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 335
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mview:Landroid/view/View;

    const v4, 0x7f0b0116

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;

    .line 336
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 337
    iget-boolean v3, p0, Lcom/android/settings_ex/GestureSettings;->testing:Z

    if-eqz v3, :cond_0

    .line 339
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/android/settings_ex/GestureSettings;->test_use_default:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 340
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings_ex/GestureSettings;->test_value:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 341
    iput v6, p0, Lcom/android/settings_ex/GestureSettings;->test_value:I

    .line 354
    :goto_0
    const v3, 0x7f080304

    new-instance v4, Lcom/android/settings_ex/GestureSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/GestureSettings$1;-><init>(Lcom/android/settings_ex/GestureSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 370
    const v3, 0x7f080305

    new-instance v4, Lcom/android/settings_ex/GestureSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/GestureSettings$2;-><init>(Lcom/android/settings_ex/GestureSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    const v3, 0x7f080700

    new-instance v4, Lcom/android/settings_ex/GestureSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/GestureSettings$3;-><init>(Lcom/android/settings_ex/GestureSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mview:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 391
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 344
    :cond_0
    const-string v3, "gesture_tilt_default_use"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 345
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 346
    const-string v3, "gesture_tilt_value"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;

    const-string v4, "gesture_tilt_value"

    invoke-static {v2, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
