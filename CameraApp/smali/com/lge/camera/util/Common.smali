.class public Lcom/lge/camera/util/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static APP_CAMCORDER_INSTANCE_COUNT:I = 0x0

.field public static APP_CAMERA_INSTANCE_COUNT:I = 0x0

.field public static APP_CAMLOADING_INSTANCE_COUNT:I = 0x0

.field public static APP_POSTVIEW_INSTANCE_COUNT:I = 0x0

.field public static final CHECK_ENTER_BATTERY:I = 0x4

.field public static final CHECK_ENTER_CALL:I = 0x1

.field public static final CHECK_ENTER_DEV_POLOCY:I = 0x7

.field public static final CHECK_ENTER_EXT_MEDIA_SCANNING:I = 0x5

.field public static final CHECK_ENTER_FMC:I = 0x3

.field public static final CHECK_ENTER_HDMI:I = 0x8

.field public static final CHECK_ENTER_INT_MEDIA_SCANNING:I = 0x6

.field public static final CHECK_ENTER_MMS_REC_SIZE:I = 0xa

.field public static final CHECK_ENTER_OK:I = 0x0

.field public static final CHECK_ENTER_SDM:I = 0x9

.field public static final CHECK_ENTER_VT_CALL:I = 0x2

.field public static final EXTERNAL_MEMORY:I = 0x0

.field public static final INTERNAL_MEMORY:I = 0x1

.field public static IS_MUTE_NOTIFICATION_STREAM:Z = false

.field public static IS_MUTE_SYSTEM_STREAM:Z = false

.field public static final KEYCODE_TESTMODE_CAMCORDER_CAMCORDER_MODE_OFF:I = 0x86

.field public static final KEYCODE_TESTMODE_CAMCORDER_ERASE_MOVING_FILE:I = 0x85

.field public static final KEYCODE_TESTMODE_CAMCORDER_MODE_ON:I = 0x81

.field public static final KEYCODE_TESTMODE_CAMCORDER_PLAY_MOVING_FILE:I = 0x84

.field public static final KEYCODE_TESTMODE_CAMCORDER_RECORD_STOP_AND_SAVE:I = 0x83

.field public static final KEYCODE_TESTMODE_CAMCORDER_SHOT_RECORD_START:I = 0x82

.field public static final NO_BUTTON_POPUP_DISMISS_DELAY:I = 0x7d0

.field public static final PROPERTY_LOCKSCREEN:Ljava/lang/String; = "service.keyguard.status"

.field public static final PROPERTY_USBCONFING:Ljava/lang/String; = "sys.usb.config"

.field public static final PROPERTY_USBSTATE:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field static final UNCONSTRAINED:I = -0x1

.field private static _getCurrentDefaultFontIndex:Ljava/lang/reflect/Method;

.field private static backupTransitionScale:F

.field private static backupWidowScale:F

.field private static cameraOutStringId:[I

.field private static cls:Ljava/lang/Class;

.field public static duration:J

.field public static endTime:J

.field public static isChangeAnimationScale:Z

.field public static isTelephonyStateCheckSkip:Z

.field public static mCheckEnterKind:I

.field private static mEnterCheckComplete:Z

.field public static mKeyguardManager:Landroid/app/KeyguardManager;

.field private static mLoadingOrientation:I

.field private static mWindowManager:Landroid/view/IWindowManager;

.field public static requestAudioFocusCount:I

.field private static splash:Landroid/widget/ImageView;

.field public static startTime:J

.field private static windowManagerImpl:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    sput v2, Lcom/lge/camera/util/Common;->APP_CAMLOADING_INSTANCE_COUNT:I

    .line 104
    sput v2, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    .line 105
    sput v2, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    .line 106
    sput v2, Lcom/lge/camera/util/Common;->APP_POSTVIEW_INSTANCE_COUNT:I

    .line 108
    sput-boolean v2, Lcom/lge/camera/util/Common;->IS_MUTE_NOTIFICATION_STREAM:Z

    .line 112
    sput-boolean v2, Lcom/lge/camera/util/Common;->IS_MUTE_SYSTEM_STREAM:Z

    .line 127
    sput v2, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    .line 132
    sput-boolean v2, Lcom/lge/camera/util/Common;->isTelephonyStateCheckSkip:Z

    .line 447
    sput v2, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    .line 1027
    sput-boolean v2, Lcom/lge/camera/util/Common;->mEnterCheckComplete:Z

    .line 1413
    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/lge/camera/util/Common;->cameraOutStringId:[I

    .line 1448
    const/4 v1, -0x1

    sput v1, Lcom/lge/camera/util/Common;->mLoadingOrientation:I

    .line 1458
    sput-wide v4, Lcom/lge/camera/util/Common;->startTime:J

    .line 1459
    sput-wide v4, Lcom/lge/camera/util/Common;->endTime:J

    .line 1460
    sput-wide v4, Lcom/lge/camera/util/Common;->duration:J

    .line 1477
    sput-object v3, Lcom/lge/camera/util/Common;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1537
    sput-object v3, Lcom/lge/camera/util/Common;->cls:Ljava/lang/Class;

    .line 1538
    sput-object v3, Lcom/lge/camera/util/Common;->windowManagerImpl:Ljava/lang/Object;

    .line 1539
    sput-object v3, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    .line 1621
    sput-boolean v2, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    .line 1662
    :try_start_0
    const-class v1, Landroid/graphics/Typeface;

    const-string v2, "getCurrentDefaultFontIndex"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/lge/camera/util/Common;->_getCurrentDefaultFontIndex:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 1663
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 1664
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 1413
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x49t 0x1t 0xbt 0x7ft
        0x49t 0x1t 0xbt 0x7ft
        0x49t 0x1t 0xbt 0x7ft
        0x21t 0x0t 0xbt 0x7ft
        0x63t 0x0t 0xbt 0x7ft
        0x63t 0x0t 0xbt 0x7ft
        0x26t 0x0t 0xbt 0x7ft
        0x27t 0x0t 0xbt 0x7ft
        0x26t 0x0t 0xbt 0x7ft
        0xeet 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BlockAlarmInRecording(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mMediator"

    .prologue
    .line 1496
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1497
    const-string v1, "CameraApp"

    const-string v2, "BlockAlarmInRecording"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1499
    .local v0, recording_start:Landroid/content/Intent;
    const-string v1, "voice_video_record_playing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1502
    .end local v0           #recording_start:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static IsHeatingVideoSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "RecordingSize"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1684
    if-nez p0, :cond_1

    .line 1686
    const-string v1, "CameraApp"

    const-string v2, "===>RecordingSize is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_0
    :goto_0
    return v0

    .line 1689
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isQCTChipset()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1691
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_4

    .line 1693
    :cond_2
    const-string v2, "1280x720"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1440x1088"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1920x1088"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1920x1080"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    move v0, v1

    .line 1694
    goto :goto_0

    .line 1698
    :cond_4
    const-string v2, "1280x720"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "1920x1088"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "1920x1080"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    .line 1699
    goto :goto_0

    .line 1702
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isNVIDIAChipset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1704
    :cond_7
    const-string v2, "1280x720"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "1920x1088"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "1920x1080"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    move v0, v1

    .line 1705
    goto :goto_0
.end method

.method public static ResetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 5
    .parameter "lp"

    .prologue
    .line 1018
    if-nez p0, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1020
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    const/4 v3, 0x0

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static StopVoiceRec(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mMediator"

    .prologue
    .line 1529
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1530
    const-string v1, "CameraApp"

    const-string v2, "StopVoiceRec"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1532
    .local v0, StopVoiceRec:Landroid/content/Intent;
    const-string v1, "Stop_Voice_Rec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1535
    .end local v0           #StopVoiceRec:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static UnblockAlarmInRecording(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mMediator"

    .prologue
    .line 1508
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1509
    const-string v1, "CameraApp"

    const-string v2, "UnblockAlarmInRecording"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1511
    .local v0, recording_finish:Landroid/content/Intent;
    const-string v1, "voice_video_record_finish"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1514
    .end local v0           #recording_finish:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static backlightControl(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    .line 1746
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useBackLightControl()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1748
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1750
    .local v0, curBrightnessMode:I
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1752
    .local v1, curBrightnessValue:I
    int-to-float v6, v1

    const/high16 v7, 0x437f

    div-float v2, v6, v7

    .line 1753
    .local v2, curValue:F
    const v5, 0x3f4ccccd

    .line 1754
    .local v5, ratio:F
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1756
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_1

    .line 1757
    mul-float v6, v2, v5

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1761
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1762
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Success to backlight control:curMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "curBright (30~255) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ratio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-float v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    .end local v0           #curBrightnessMode:I
    .end local v1           #curBrightnessValue:I
    .end local v2           #curValue:F
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #ratio:F
    :cond_0
    :goto_1
    return-void

    .line 1759
    .restart local v0       #curBrightnessMode:I
    .restart local v1       #curBrightnessValue:I
    .restart local v2       #curValue:F
    .restart local v4       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v5       #ratio:F
    :cond_1
    const/high16 v6, -0x4080

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1766
    .end local v0           #curBrightnessMode:I
    .end local v1           #curBrightnessValue:I
    .end local v2           #curValue:F
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #ratio:F
    :catch_0
    move-exception v3

    .line 1767
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Fail to backlight control:"

    invoke-static {v6, v7, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static byteArrayToInt([BI)I
    .locals 4
    .parameter "b"
    .parameter "offset"

    .prologue
    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 199
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 200
    .local v1, shift:I
    add-int v3, v0, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v1           #shift:I
    :cond_0
    return v2
.end method

.method public static byteArrayToIntArrary([B[I)I
    .locals 2
    .parameter "b"
    .parameter "a"

    .prologue
    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 183
    mul-int/lit8 v1, v0, 0x4

    invoke-static {p0, v1}, Lcom/lge/camera/util/Common;->byteArrayToInt([BI)I

    move-result v1

    aput v1, p1, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static checkAudioFocus(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 482
    sget v1, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    if-eqz v1, :cond_0

    .line 483
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check requestAudioFocusCount : current count is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v1, "CameraApp"

    const-string v2, "Check requestAudioFocusCount : doing abandonAudioFocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 486
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 487
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    .line 489
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public static checkCallStatus(Landroid/app/Activity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v0, 0x1

    .line 1064
    const-string v1, "CameraApp"

    const-string v2, "check enter by call status"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    sget-boolean v1, Lcom/lge/camera/util/Common;->isTelephonyStateCheckSkip:Z

    if-eqz v1, :cond_1

    .line 1067
    const-string v1, "CameraApp"

    const-string v2, "Telephony state check skip - Call"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :cond_0
    :goto_0
    return v0

    .line 1071
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/TelephonyUtil;->phoneIsOffhook()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/TelephonyUtil;->phoneIsIdle(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1072
    :cond_2
    sput v0, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    .line 1073
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkCameraOut(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1429
    if-nez p0, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    const/4 v0, 0x0

    .line 1434
    .local v0, sMsg:Ljava/lang/String;
    sget v1, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    if-ltz v1, :cond_2

    sget v1, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    sget-object v2, Lcom/lge/camera/util/Common;->cameraOutStringId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v1, Lcom/lge/camera/util/Common;->cameraOutStringId:[I

    sget v2, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    aget v1, v1, v2

    if-ltz v1, :cond_2

    .line 1436
    sget-object v1, Lcom/lge/camera/util/Common;->cameraOutStringId:[I

    sget v2, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1439
    :cond_2
    if-eqz v0, :cond_0

    .line 1440
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1442
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    goto :goto_0
.end method

.method public static checkCurrentBatteryStatus(Landroid/app/Activity;)Z
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 1038
    const-string v4, "CameraApp"

    const-string v5, "check enter by battery status"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1041
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1042
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 1043
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1044
    const-string v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1045
    .local v2, level:I
    const-string v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_0

    .line 1046
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Battery level is low : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const/4 v4, 0x4

    sput v4, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    .line 1054
    .end local v2           #level:I
    :goto_0
    return v3

    .line 1050
    .restart local v2       #level:I
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current battery level is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    .end local v2           #level:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static checkDevicePolicy(Landroid/app/Activity;)Z
    .locals 5
    .parameter "activity"

    .prologue
    .line 1232
    const-string v2, "CameraApp"

    const-string v3, "check enter by Device Policy status"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const/4 v0, 0x1

    .line 1234
    .local v0, allowCamera:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1235
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 1237
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1238
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowCamera = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    if-eqz v0, :cond_0

    .line 1240
    const/4 v2, 0x7

    sput v2, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    .line 1243
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkEnterApplication(Landroid/app/Activity;Z)Z
    .locals 5
    .parameter "activity"
    .parameter "bResume"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1376
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEnterApplication : mEnterCheckComplete = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lge/camera/util/Common;->mEnterCheckComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    sget-boolean v2, Lcom/lge/camera/util/Common;->mEnterCheckComplete:Z

    if-eqz v2, :cond_0

    .line 1410
    :goto_0
    return v0

    .line 1382
    :cond_0
    if-eqz p1, :cond_1

    .line 1384
    const-string v2, "service.keyguard.status"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1385
    invoke-static {v0}, Lcom/lge/camera/util/Common;->setTelephonyStateCheckSkip(Z)V

    .line 1389
    :cond_1
    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkCallStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkVTCallStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkFMCStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkCurrentBatteryStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkExtenalMediaScanning(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkInternalMediaScanning(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkDevicePolicy(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkHdmiStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/Common;->getCameraStateInSDM(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkMinimumMMSRecordingSize(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1400
    invoke-static {v1}, Lcom/lge/camera/util/Common;->setTelephonyStateCheckSkip(Z)V

    .line 1401
    sput-boolean v0, Lcom/lge/camera/util/Common;->mEnterCheckComplete:Z

    goto :goto_0

    .line 1404
    :cond_2
    invoke-static {v1}, Lcom/lge/camera/util/Common;->setTelephonyStateCheckSkip(Z)V

    .line 1405
    if-eqz p0, :cond_3

    .line 1406
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 1407
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    move v0, v1

    .line 1410
    goto :goto_0
.end method

.method public static checkEnteringTime(Z)V
    .locals 6
    .parameter "end"

    .prologue
    const-wide/16 v4, 0x0

    .line 1463
    if-eqz p0, :cond_1

    .line 1464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/Common;->endTime:J

    .line 1465
    sget-wide v0, Lcom/lge/camera/util/Common;->endTime:J

    sget-wide v2, Lcom/lge/camera/util/Common;->startTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/lge/camera/util/Common;->duration:J

    .line 1466
    sget-wide v0, Lcom/lge/camera/util/Common;->startTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1467
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering time is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lge/camera/util/Common;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_0
    sput-wide v4, Lcom/lge/camera/util/Common;->startTime:J

    .line 1470
    sput-wide v4, Lcom/lge/camera/util/Common;->endTime:J

    .line 1475
    :goto_0
    return-void

    .line 1473
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/Common;->startTime:J

    goto :goto_0
.end method

.method public static checkExtenalMediaScanning(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1171
    const-string v0, "CameraApp"

    const-string v1, "check enter by ExternalMediaScanning"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const/4 v8, 0x0

    .line 1173
    .local v8, result:Z
    const/4 v6, 0x0

    .line 1175
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1177
    if-eqz v6, :cond_0

    .line 1178
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 1179
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1180
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1186
    :cond_0
    if-eqz v6, :cond_1

    .line 1187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1188
    const/4 v6, 0x0

    .line 1192
    :cond_1
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media Ext. scanning result : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    if-eqz v8, :cond_3

    .line 1194
    const/4 v0, 0x5

    sput v0, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    move v0, v9

    .line 1197
    :goto_1
    return v0

    .line 1183
    :catch_0
    move-exception v7

    .line 1184
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "cursor error "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    if-eqz v6, :cond_1

    .line 1187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1188
    const/4 v6, 0x0

    goto :goto_0

    .line 1186
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1188
    const/4 v6, 0x0

    :cond_2
    throw v0

    :cond_3
    move v0, v10

    .line 1197
    goto :goto_1
.end method

.method public static checkFMCStatus(Landroid/app/Activity;)Z
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    .line 1097
    const-string v4, "CameraApp"

    const-string v5, "check enter by FMC status"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    sget-boolean v4, Lcom/lge/camera/util/Common;->isTelephonyStateCheckSkip:Z

    if-eqz v4, :cond_1

    .line 1101
    const-string v4, "CameraApp"

    const-string v5, "Telephony state check skip - FMC"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_0
    :goto_0
    return v3

    .line 1105
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFMCmodel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1106
    const/4 v2, 0x0

    .line 1107
    .local v2, iFmcCallInterfac:Lcom/lge/ims/IFmcCallInterface;
    const/4 v1, 0x0

    .line 1109
    .local v1, fmcState:I
    :try_start_0
    const-string v4, "FmcCall"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/ims/IFmcCallInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/ims/IFmcCallInterface;

    move-result-object v2

    .line 1110
    if-nez v2, :cond_2

    .line 1111
    const-string v4, "CameraApp"

    const-string v5, "Not use FMC Call service"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "RemoteException from getFmcCallInterface()"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1122
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_0

    .line 1123
    const/4 v3, 0x3

    sput v3, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    .line 1124
    const/4 v3, 0x0

    goto :goto_0

    .line 1114
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/lge/ims/IFmcCallInterface;->getFmcCallState()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1
.end method

.method private static checkHdmiStatus(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/16 v9, 0x400

    const/4 v8, 0x1

    .line 1285
    const/4 v3, 0x1

    .line 1286
    .local v3, enterCamera:Z
    const/4 v7, 0x0

    .line 1287
    .local v7, mHDMIState:I
    new-array v1, v9, [C

    .line 1288
    .local v1, buffer:[C
    const-string v0, "/sys/class/switch/hdmi/state"

    .line 1290
    .local v0, HDMI_STATE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1291
    const-string v9, "CameraApp"

    const-string v10, "It can support HDMI/MHL!!"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :goto_0
    return v8

    .line 1295
    :cond_0
    const/4 v4, 0x0

    .line 1297
    .local v4, file:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1298
    .end local v4           #file:Ljava/io/FileReader;
    .local v5, file:Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x400

    :try_start_1
    invoke-virtual {v5, v1, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 1299
    .local v6, len:I
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v7

    .line 1305
    if-eqz v5, :cond_4

    .line 1307
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 1314
    .end local v5           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v4       #file:Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-ne v7, v8, :cond_2

    .line 1315
    const/4 v3, 0x0

    .line 1316
    const/16 v8, 0x8

    sput v8, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    .line 1318
    :cond_2
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkHdmiStatus: is disconnected?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v3

    .line 1319
    goto :goto_0

    .line 1308
    .end local v4           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    .restart local v6       #len:I
    :catch_0
    move-exception v2

    .line 1309
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 1310
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    goto :goto_1

    .line 1300
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #len:I
    :catch_1
    move-exception v2

    .line 1301
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v9, "CameraApp"

    const-string v10, "This kernel does not have dock station support"

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1305
    if-eqz v4, :cond_1

    .line 1307
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1308
    :catch_2
    move-exception v2

    .line 1309
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1302
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 1303
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1305
    if-eqz v4, :cond_1

    .line 1307
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 1308
    :catch_4
    move-exception v2

    .line 1309
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1305
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v4, :cond_3

    .line 1307
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1310
    :cond_3
    :goto_5
    throw v8

    .line 1308
    :catch_5
    move-exception v2

    .line 1309
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1305
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    goto :goto_4

    .line 1302
    .end local v4           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    goto :goto_3

    .line 1300
    .end local v4           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    goto :goto_2

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    .restart local v6       #len:I
    :cond_4
    move-object v4, v5

    .end local v5           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static checkInternalMediaScanning(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1201
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1202
    const/4 v8, 0x0

    .line 1203
    .local v8, result:Z
    const/4 v6, 0x0

    .line 1205
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1207
    if-eqz v6, :cond_0

    .line 1208
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 1209
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1210
    const-string v0, "internal"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1216
    :cond_0
    if-eqz v6, :cond_1

    .line 1217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1218
    const/4 v6, 0x0

    .line 1222
    :cond_1
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media Int. scanning result : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    if-eqz v8, :cond_3

    .line 1224
    const/4 v0, 0x6

    sput v0, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    move v0, v9

    .line 1228
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #result:Z
    :goto_1
    return v0

    .line 1213
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #result:Z
    :catch_0
    move-exception v7

    .line 1214
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "cursor error "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1216
    if-eqz v6, :cond_1

    .line 1217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1218
    const/4 v6, 0x0

    goto :goto_0

    .line 1216
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1218
    const/4 v6, 0x0

    :cond_2
    throw v0

    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #result:Z
    :cond_3
    move v0, v10

    .line 1228
    goto :goto_1
.end method

.method public static checkMinimumMMSRecordingSize(Landroid/app/Activity;)Z
    .locals 9
    .parameter "activity"

    .prologue
    const-wide/16 v7, 0x0

    .line 1356
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1357
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1358
    const-string v4, "CameraApp"

    const-string v5, "check enter by minimum mms recording size"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1361
    .local v1, getExBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1362
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1363
    .local v2, mRequestedSizeLimit:J
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requested size :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    cmp-long v4, v2, v7

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMmsVideoMinimumSize()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 1365
    const/16 v4, 0xa

    sput v4, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    .line 1366
    const/4 v4, 0x0

    .line 1371
    .end local v1           #getExBundle:Landroid/os/Bundle;
    .end local v2           #mRequestedSizeLimit:J
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static checkVTCallStatus(Landroid/app/Activity;)Z
    .locals 4
    .parameter "activity"

    .prologue
    .line 1085
    const-string v1, "net.ims.vt.incall"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, mVTStatus:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check enter by VT call status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    const/4 v1, 0x2

    sput v1, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    .line 1089
    const/4 v1, 0x0

    .line 1092
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 855
    if-nez p0, :cond_0

    .line 864
    :goto_0
    return-void

    .line 859
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    const/4 p0, 0x0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSilently : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 789
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 790
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 792
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 794
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 798
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 808
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 792
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 794
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 802
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 804
    goto :goto_2

    .line 805
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 808
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 5
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 771
    invoke-static {p0, p1, p2}, Lcom/lge/camera/util/Common;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 775
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 776
    const/4 v1, 0x1

    .line 777
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 778
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 781
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 783
    .restart local v1       #roundedSize:I
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeSampleSize() return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return v1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "strSrc"
    .parameter "strDest"

    .prologue
    .line 576
    const/4 v8, 0x1

    .line 577
    .local v8, ret:Z
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .local v7, oldFile:Ljava/io/File;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 579
    .local v0, data:[B
    const/4 v4, 0x0

    .line 580
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 582
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v6, fp:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 585
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 586
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 588
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 590
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v1

    .line 597
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 598
    const/4 v8, 0x0

    move-object v2, v3

    .line 602
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 603
    const/4 v4, 0x0

    .line 616
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_2
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 617
    invoke-static {v4}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 620
    .end local v6           #fp:Ljava/io/File;
    :goto_3
    return v8

    .line 592
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fp:Ljava/io/File;
    :cond_0
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 593
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 594
    const/4 v2, 0x0

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 605
    :catch_1
    move-exception v1

    .line 606
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 607
    const/4 v8, 0x0

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 610
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #fp:Ljava/io/File;
    :catch_2
    move-exception v1

    .line 611
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 612
    const-string v9, "LGCamera"

    const-string v10, "Failed to copyFile"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 613
    const/4 v8, 0x0

    .line 616
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 617
    invoke-static {v4}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    .line 616
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 617
    invoke-static {v4}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 616
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fp:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 610
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static createCaptureBitmap([BI)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"
    .parameter "orientation"

    .prologue
    .line 902
    const v1, 0xc800

    invoke-static {p0, v1}, Lcom/lge/camera/util/Common;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 903
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 904
    return-object v0
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 990
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 991
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 992
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_1

    .line 993
    const-string v2, "CameraApp"

    const-string v3, "file is not a directory, null return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    .end local v0           #files:[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 996
    .restart local v0       #files:[Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 997
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 998
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/lge/camera/util/Common;->deleteDirectory(Ljava/io/File;)V

    .line 996
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1000
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1003
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static declared-synchronized deleteLoadingWindow()V
    .locals 9

    .prologue
    .line 1591
    const-class v4, Lcom/lge/camera/util/Common;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/lge/camera/util/Common;->cls:Ljava/lang/Class;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/lge/camera/util/Common;->windowManagerImpl:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 1620
    .local v2, removeView:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 1594
    .end local v2           #removeView:Ljava/lang/reflect/Method;
    :cond_1
    :try_start_1
    const-string v3, "CameraApp"

    const-string v5, "deleteLoadingWindow"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1595
    const/4 v2, 0x0

    .line 1597
    .restart local v2       #removeView:Ljava/lang/reflect/Method;
    :try_start_2
    sget-object v3, Lcom/lge/camera/util/Common;->cls:Ljava/lang/Class;

    const-string v5, "removeView"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/view/View;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1599
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1600
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1602
    :cond_2
    sget-object v3, Lcom/lge/camera/util/Common;->windowManagerImpl:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    sget-object v3, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1605
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 1606
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1607
    sget-object v3, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1609
    :cond_3
    sget-object v3, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1610
    if-eqz v0, :cond_4

    .line 1611
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1612
    sget-object v3, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1614
    :cond_4
    const/4 v3, 0x0

    sput-object v3, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    .line 1615
    const/4 v3, 0x0

    sput-object v3, Lcom/lge/camera/util/Common;->cls:Ljava/lang/Class;

    .line 1616
    const/4 v3, 0x0

    sput-object v3, Lcom/lge/camera/util/Common;->windowManagerImpl:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1617
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 1618
    .local v1, e:Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showLoadingWindow error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1591
    .end local v1           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static destroyView(Ljava/lang/Object;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    .line 947
    if-nez p0, :cond_1

    .line 987
    :cond_0
    return-void

    :cond_1
    move-object v5, p0

    .line 951
    check-cast v5, Landroid/view/View;

    .line 953
    .local v5, view:Landroid/view/View;
    instance-of v6, p0, Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    move-object v3, p0

    .line 955
    check-cast v3, Landroid/widget/ImageView;

    .line 956
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 958
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleanup ImageDrawable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 960
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    .end local v3           #iv:Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 966
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleanup BackgroundDrawable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 968
    invoke-virtual {v5, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 969
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 971
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 972
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 973
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 974
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 977
    :cond_3
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v4, p0

    .line 979
    check-cast v4, Landroid/view/ViewGroup;

    .line 980
    .local v4, vg:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 981
    .local v0, childCount:I
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "child view count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 984
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/Common;->destroyView(Ljava/lang/Object;)V

    .line 982
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 969
    .end local v0           #childCount:I
    .end local v2           #i:I
    .end local v4           #vg:Landroid/view/ViewGroup;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static galleryCacheDuringCameraApp(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "onresume"

    .prologue
    .line 1722
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->stopGalleryCacheduringCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    if-eqz p1, :cond_1

    .line 1724
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.gallery.cache.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1729
    :cond_0
    :goto_0
    return-void

    .line 1726
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.gallery.cache.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getAccumulatedDCFCount(Landroid/content/Context;)J
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 276
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "dcf_count"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getAccumulatedDCFDigit(Landroid/content/Context;)I
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 287
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 288
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "dcf_digit"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getAccumulatedDCFFirstCount(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 281
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "dcf_first_number"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getAccumulatedPictureCount(Landroid/content/Context;I)J
    .locals 5
    .parameter "c"
    .parameter "storage"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, storageString:Ljava/lang/String;
    if-ne p1, v3, :cond_0

    .line 229
    const-string v1, "internal"

    .line 233
    :goto_0
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "picture_number_%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    .line 231
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "external"

    goto :goto_0
.end method

.method public static getAccumulatedVideoCount(Landroid/content/Context;I)J
    .locals 5
    .parameter "c"
    .parameter "storage"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, storageString:Ljava/lang/String;
    if-ne p1, v3, :cond_0

    .line 294
    const-string v1, "internal"

    .line 298
    :goto_0
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "video_number_%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    .line 296
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "external"

    goto :goto_0
.end method

.method private static getCameraStateInSDM(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1249
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    move v0, v9

    .line 1279
    :goto_0
    return v0

    .line 1252
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "check enter In SDM"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const/4 v6, 0x1

    .line 1254
    .local v6, cameraEnableStatus:I
    const/4 v7, 0x0

    .line 1257
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/CameraConstants;->SDM_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/camera/properties/CameraConstants;->CAMERA_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1259
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1260
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1261
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** cameraEnableStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    if-eqz v7, :cond_1

    .line 1270
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1271
    const/4 v7, 0x0

    .line 1275
    :cond_1
    :goto_1
    if-ne v6, v9, :cond_5

    move v0, v9

    .line 1276
    goto :goto_0

    .line 1263
    :cond_2
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** cannot access to SDM server DB, cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1269
    if-eqz v7, :cond_3

    .line 1270
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1271
    const/4 v7, 0x0

    :cond_3
    move v0, v9

    goto :goto_0

    .line 1266
    :catch_0
    move-exception v8

    .line 1267
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v1, "Could not load photo from database"

    invoke-static {v0, v1, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1269
    if-eqz v7, :cond_1

    .line 1270
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1271
    const/4 v7, 0x0

    goto :goto_1

    .line 1269
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1270
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1271
    const/4 v7, 0x0

    :cond_4
    throw v0

    .line 1278
    :cond_5
    const/16 v0, 0x9

    sput v0, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    move v0, v10

    .line 1279
    goto/16 :goto_0
.end method

.method public static getCurrentDateTime(J)Ljava/lang/String;
    .locals 5
    .parameter "dateTime"

    .prologue
    .line 871
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 872
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, stringDateTime:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dateTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return-object v1
.end method

.method public static getCurrentDefaultFontIndex()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1669
    const-string v2, "ro.lge.fonts"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1671
    .local v0, hasFont:Z
    if-eqz v0, :cond_0

    .line 1672
    sget-object v2, Lcom/lge/camera/util/Common;->_getCurrentDefaultFontIndex:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 1674
    :try_start_0
    sget-object v2, Lcom/lge/camera/util/Common;->_getCurrentDefaultFontIndex:Ljava/lang/reflect/Method;

    const-class v4, Landroid/graphics/Typeface;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1681
    :goto_0
    return v2

    .line 1675
    :catch_0
    move-exception v1

    .line 1676
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "CameraApp"

    const-string v4, "Error : not support font api."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #t:Ljava/lang/Throwable;
    :cond_0
    move v2, v3

    .line 1681
    goto :goto_0
.end method

.method public static getDimension(Landroid/content/Context;I)F
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1013
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getFileFullPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v12, 0x0

    .line 631
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileFullPathFromUri uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 634
    .local v2, proj:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 636
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 637
    .local v9, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 640
    .local v11, result:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 646
    if-nez v7, :cond_1

    .line 647
    const-string v0, "CameraApp"

    const-string v1, "error! cursor is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    if-eqz v7, :cond_0

    .line 662
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 663
    const/4 v7, 0x0

    :cond_0
    move-object v0, v12

    .line 666
    :goto_0
    return-object v0

    .line 650
    :cond_1
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 652
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path from Uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    new-instance v10, Ljava/io/File;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 655
    .end local v9           #file:Ljava/io/File;
    .local v10, file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    move-object v9, v10

    .line 661
    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    :cond_2
    if-eqz v7, :cond_3

    .line 662
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 663
    const/4 v7, 0x0

    .end local v6           #column_index:I
    :cond_3
    :goto_1
    move-object v0, v11

    .line 666
    goto :goto_0

    .line 657
    :catch_0
    move-exception v8

    .line 658
    .local v8, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "managedQuery() Exception! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 659
    const/4 v11, 0x0

    .line 661
    if-eqz v7, :cond_3

    .line 662
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 663
    const/4 v7, 0x0

    goto :goto_1

    .line 661
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_4

    .line 662
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 663
    const/4 v7, 0x0

    :cond_4
    throw v0

    .line 661
    .end local v9           #file:Ljava/io/File;
    .restart local v6       #column_index:I
    .restart local v10       #file:Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    goto :goto_3

    .line 657
    .end local v9           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    goto :goto_2
.end method

.method public static getLastCameraMode(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 304
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "entermode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLastPicturePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 411
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_path_camera"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastPictureUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 401
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 402
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_uri_camera"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastSecondaryCameraMode(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 310
    const-string v1, "Secondary_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "entermode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLastVideoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 416
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_path_camcorder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastVideoUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 406
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_uri_camcorder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLoadingOrientation()I
    .locals 1

    .prologue
    .line 1455
    sget v0, Lcom/lge/camera/util/Common;->mLoadingOrientation:I

    return v0
.end method

.method public static getNameWithoutExtension(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 714
    invoke-static {p0, p1}, Lcom/lge/camera/util/Common;->getFileFullPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, filename:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 716
    const/4 v1, 0x0

    .line 720
    :goto_0
    return-object v1

    .line 718
    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, nameOnly:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getPixelFromDimens(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1008
    invoke-static {p0, p1}, Lcom/lge/camera/util/Common;->getDimension(Landroid/content/Context;I)F

    move-result v0

    .line 1009
    .local v0, dimension:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static getSampleSize(Lcom/lge/camera/Mediator;)I
    .locals 5
    .parameter "mMediator"

    .prologue
    .line 908
    const/16 v1, 0x10

    .line 909
    .local v1, sampleSize:I
    const/4 v0, 0x0

    .line 911
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz p0, :cond_1

    .line 912
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_picturesize"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 914
    if-eqz v0, :cond_0

    .line 915
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_continuous"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 916
    const/4 v1, 0x1

    .line 924
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 926
    const/4 v1, 0x1

    .line 930
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraPostViewController : getSampleSize is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    return v1

    .line 917
    :cond_2
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 918
    const/4 v1, 0x1

    goto :goto_0

    .line 920
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getTranslateAnimation(FFFFIZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/TranslateAnimation;
    .locals 4
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"
    .parameter "duration"
    .parameter "fillAfter"
    .parameter "listener"

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, ta:Landroid/view/animation/TranslateAnimation;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranslateAnimation fromX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " toX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #ta:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 560
    .restart local v0       #ta:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 561
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 562
    if-eqz p6, :cond_0

    .line 563
    invoke-virtual {v0, p6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 565
    :cond_0
    return-object v0
.end method

.method public static getUSBconfig()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1798
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===>getUSBconfig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sys.usb.config"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const-string v0, "sys.usb.config"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUSBstate()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1802
    const/4 v3, 0x0

    .line 1803
    .local v3, reader:Ljava/io/FileReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1805
    .local v0, buffer:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/android_usb/android0/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1806
    .end local v3           #reader:Ljava/io/FileReader;
    .local v4, reader:Ljava/io/FileReader;
    if-eqz v4, :cond_2

    .line 1809
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->read()I

    move-result v1

    .local v1, data:I
    if-lez v1, :cond_1

    .line 1811
    int-to-char v5, v1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    .line 1812
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1818
    .end local v1           #data:I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 1819
    .end local v4           #reader:Ljava/io/FileReader;
    .local v2, e:Ljava/io/IOException;
    .restart local v3       #reader:Ljava/io/FileReader;
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1824
    .end local v2           #e:Ljava/io/IOException;
    :goto_2
    const-string v5, "0"

    .end local v3           #reader:Ljava/io/FileReader;
    :goto_3
    return-object v5

    .line 1814
    .restart local v1       #data:I
    .restart local v4       #reader:Ljava/io/FileReader;
    :cond_1
    :try_start_2
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===>getUSBState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "len :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 1816
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_3

    .end local v1           #data:I
    :cond_2
    move-object v3, v4

    .line 1820
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #reader:Ljava/io/FileReader;
    goto :goto_2

    .line 1818
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getUriFromFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "resolver"
    .parameter "fullFilePath"

    .prologue
    .line 676
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriFromFilePath fullFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, selection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 679
    .local v9, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 680
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 683
    .local v8, id:I
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 689
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 691
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, v8

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 697
    :cond_0
    if-eqz v6, :cond_1

    .line 698
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 699
    const/4 v6, 0x0

    .line 703
    :cond_1
    :goto_0
    return-object v9

    .line 694
    :catch_0
    move-exception v7

    .line 695
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "deleteTimeMachineImages fail!:"

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    if-eqz v6, :cond_1

    .line 698
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 699
    const/4 v6, 0x0

    goto :goto_0

    .line 697
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 698
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 699
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public static getVoiceShutterPopupMessage(Landroid/content/Context;)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 1524
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1525
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "voice_shutter_message"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static intToByteArray(I)[B
    .locals 2
    .parameter "integer"

    .prologue
    .line 167
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    .local v0, buff:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 169
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static isEnterCheckComplete()Z
    .locals 1

    .prologue
    .line 1030
    sget-boolean v0, Lcom/lge/camera/util/Common;->mEnterCheckComplete:Z

    return v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 206
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isHDMIConnected(Landroid/app/Activity;)Z
    .locals 12
    .parameter "activity"

    .prologue
    const/16 v9, 0x400

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1322
    const/4 v6, 0x0

    .line 1323
    .local v6, mHDMIState:I
    new-array v1, v9, [C

    .line 1324
    .local v1, buffer:[C
    const-string v0, "/sys/class/switch/hdmi/state"

    .line 1326
    .local v0, HDMI_STATE_PATH:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1328
    .local v3, file:Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1329
    .end local v3           #file:Ljava/io/FileReader;
    .local v4, file:Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 1330
    .local v5, len:I
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v6

    .line 1336
    if-eqz v4, :cond_3

    .line 1338
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 1345
    .end local v4           #file:Ljava/io/FileReader;
    .end local v5           #len:I
    .restart local v3       #file:Ljava/io/FileReader;
    :cond_0
    :goto_0
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mHDMIState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    if-ne v6, v7, :cond_2

    .line 1350
    :goto_1
    return v7

    .line 1339
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    .restart local v5       #len:I
    :catch_0
    move-exception v2

    .line 1340
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 1341
    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_0

    .line 1331
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #len:I
    :catch_1
    move-exception v2

    .line 1332
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v9, "CameraApp"

    const-string v10, "This kernel does not have dock station support"

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1336
    if-eqz v3, :cond_0

    .line 1338
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1339
    :catch_2
    move-exception v2

    .line 1340
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1333
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 1334
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1336
    if-eqz v3, :cond_0

    .line 1338
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1339
    :catch_4
    move-exception v2

    .line 1340
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1336
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_1

    .line 1338
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1341
    :cond_1
    :goto_5
    throw v7

    .line 1339
    :catch_5
    move-exception v2

    .line 1340
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "CameraApp"

    const-string v9, ""

    invoke-static {v8, v9, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    move v7, v8

    .line 1350
    goto :goto_1

    .line 1336
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_4

    .line 1333
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_3

    .line 1331
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_2

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    .restart local v5       #len:I
    :cond_3
    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_0
.end method

.method public static isScreenLocked()Z
    .locals 4

    .prologue
    .line 1479
    const/4 v0, 0x0

    .line 1480
    .local v0, isLockscreen:Z
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOnPreviewFrameSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1481
    const/4 v0, 0x0

    .line 1489
    :goto_0
    return v0

    .line 1484
    :cond_0
    const-string v1, "service.keyguard.status"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1485
    const/4 v0, 0x1

    .line 1488
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenlock? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadBitmapfromFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "strFilename"
    .parameter "samplesize"

    .prologue
    .line 936
    const/4 v0, 0x0

    .line 938
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 939
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 940
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 942
    return-object v0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 814
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 815
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 816
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 818
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 820
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "makeBitmap decordByteArray fail"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 823
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/lge/camera/util/Common;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 825
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 827
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 828
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 829
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 831
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 832
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "CameraApp"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static makeBitmapFromRawData([BII)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "rawData"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 841
    :try_start_0
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 842
    .local v0, bf:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 843
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 844
    .local v1, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    .end local v0           #bf:Ljava/nio/ByteBuffer;
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 846
    :catch_0
    move-exception v2

    .line 847
    .local v2, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "CameraApp"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 848
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pauseAudioPlayback(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 429
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 430
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.iloen.melon.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, m:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 435
    .end local v1           #m:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 436
    return-void
.end method

.method public static printRunningTask(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1732
    if-eqz p0, :cond_0

    .line 1733
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1734
    .local v1, manager:Landroid/app/ActivityManager;
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1735
    .local v2, runningTask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    .line 1736
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1737
    .local v3, taskSize:I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runningTask size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1739
    const-string v5, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runningTask "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1743
    .end local v0           #i:I
    .end local v1           #manager:Landroid/app/ActivityManager;
    .end local v2           #runningTask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #taskSize:I
    :cond_0
    return-void
.end method

.method public static reduceBrightnessMode(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "start"

    .prologue
    .line 1712
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->ReduceBrightnessCamcorderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1713
    if-eqz p1, :cond_1

    .line 1714
    new-instance v0, Landroid/content/Intent;

    const-string v1, "video_recording_preview_start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1719
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "video_recording_preview_stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static resumeAudioPlayback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "togglepause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 445
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 728
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 729
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 730
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 733
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 735
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 736
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    const/4 p0, 0x0

    .line 738
    move-object p0, v7

    .line 745
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 740
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 742
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutOfMemoryError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveAccumulatedDCFCount(Landroid/content/Context;J)V
    .locals 5
    .parameter "c"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 252
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 253
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dcf_count"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public static saveAccumulatedDCFDigit(Landroid/content/Context;I)V
    .locals 5
    .parameter "c"
    .parameter "digit"

    .prologue
    const/4 v3, 0x0

    .line 268
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 269
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dcf_digit"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public static saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V
    .locals 5
    .parameter "c"
    .parameter "firstCount"

    .prologue
    const/4 v3, 0x0

    .line 260
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 261
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dcf_first_number"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public static saveAccumulatedPictureCount(Landroid/content/Context;IJ)V
    .locals 6
    .parameter "c"
    .parameter "storage"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, storageString:Ljava/lang/String;
    if-ne p1, v4, :cond_0

    .line 215
    const-string v2, "internal"

    .line 219
    :goto_0
    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 220
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "picture_number_%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saved picture counter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 217
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const-string v2, "external"

    goto :goto_0
.end method

.method public static saveAccumulatedVideoCount(Landroid/content/Context;IJ)V
    .locals 6
    .parameter "c"
    .parameter "storage"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, storageString:Ljava/lang/String;
    if-ne p1, v4, :cond_0

    .line 240
    const-string v2, "internal"

    .line 244
    :goto_0
    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 245
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "video_number_%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saved video counter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 242
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const-string v2, "external"

    goto :goto_0
.end method

.method public static saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 878
    const/4 v1, 0x0

    .line 880
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 886
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 888
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v3, "CameraApp"

    const-string v4, "IOException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 884
    const/4 v3, 0x0

    .line 886
    invoke-static {v1}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 882
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static saveLastCameraMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "m"

    .prologue
    .line 316
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 317
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 318
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "entermode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    return-void
.end method

.method public static saveLastPicture(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V
    .locals 3
    .parameter "mediator"
    .parameter "uri"

    .prologue
    .line 331
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 333
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->saveLastPictureUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 334
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, path:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->saveLastPicturePath(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static saveLastPicturePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "c"
    .parameter "path"

    .prologue
    .line 376
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 377
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 378
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 379
    const-string v2, "thumbnail_path_camera"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    return-void

    .line 382
    :cond_0
    const-string v2, "thumbnail_path_camera"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLastPictureUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "c"
    .parameter "uri"

    .prologue
    .line 350
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 351
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 352
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 353
    const-string v2, "thumbnail_uri_camera"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    return-void

    .line 356
    :cond_0
    const-string v2, "thumbnail_uri_camera"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLastSecondaryCameraMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "m"

    .prologue
    .line 324
    const-string v2, "Secondary_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 325
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 326
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "entermode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    return-void
.end method

.method public static saveLastVideo(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V
    .locals 3
    .parameter "mediator"
    .parameter "uri"

    .prologue
    .line 340
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 342
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->saveLastVideoUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 343
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, path:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->saveLastVideoPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static saveLastVideoPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "c"
    .parameter "path"

    .prologue
    .line 389
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 390
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 391
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 392
    const-string v2, "thumbnail_path_camcorder"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 398
    return-void

    .line 395
    :cond_0
    const-string v2, "thumbnail_path_camcorder"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLastVideoUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "c"
    .parameter "uri"

    .prologue
    .line 363
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 364
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 365
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 366
    const-string v2, "thumbnail_uri_camcorder"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    return-void

    .line 369
    :cond_0
    const-string v2, "thumbnail_uri_camcorder"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setAudioFocus(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "requestAudioFocus"

    .prologue
    const/4 v3, 0x0

    .line 449
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 450
    .local v0, am:Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    .line 451
    const-string v1, "CameraApp"

    const-string v2, "++ Get audiofocus - not music pause"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 453
    sget v1, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    .line 460
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "-- Loose audioFocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 458
    sget v1, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    goto :goto_0
.end method

.method public static setAudioFocus(Landroid/content/Context;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "requestAudioFocus"
    .parameter "isTransient"

    .prologue
    const/4 v3, 0x0

    .line 463
    if-eqz p2, :cond_1

    .line 464
    invoke-static {p0, p1}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;Z)V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 467
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 468
    if-eqz p1, :cond_2

    .line 469
    const-string v1, "CameraApp"

    const-string v2, "++ Get audiofocus-stopAudioPlayback by get audiofocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 471
    sget v1, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    goto :goto_0

    .line 473
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "-- Loose audioFocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 475
    sget v1, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/lge/camera/util/Common;->requestAudioFocusCount:I

    goto :goto_0
.end method

.method public static setEnterCheckComplete(Z)V
    .locals 0
    .parameter "complete"

    .prologue
    .line 1034
    sput-boolean p0, Lcom/lge/camera/util/Common;->mEnterCheckComplete:Z

    .line 1035
    return-void
.end method

.method public static setFmRadioOff(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 530
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseFmRadioOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.fmradio.command.fmradioservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, i:Landroid/content/Intent;
    const-string v1, "request"

    const-string v2, "power_off"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 536
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static setLoadingOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 1451
    sput p0, Lcom/lge/camera/util/Common;->mLoadingOrientation:I

    .line 1452
    return-void
.end method

.method public static setMuteNotificationStream(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "set"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 492
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 493
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 494
    if-eqz p1, :cond_1

    .line 495
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : ON"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, v3, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 498
    sput-boolean v5, Lcom/lge/camera/util/Common;->IS_MUTE_NOTIFICATION_STREAM:Z

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    sget-boolean v1, Lcom/lge/camera/util/Common;->IS_MUTE_NOTIFICATION_STREAM:Z

    if-eqz v1, :cond_0

    .line 502
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : OFF"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 504
    sput-boolean v4, Lcom/lge/camera/util/Common;->IS_MUTE_NOTIFICATION_STREAM:Z

    goto :goto_0
.end method

.method public static setMuteSystemStream(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "set"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 511
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 512
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 513
    if-eqz p1, :cond_1

    .line 514
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : ON"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, v3, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 517
    sput-boolean v3, Lcom/lge/camera/util/Common;->IS_MUTE_SYSTEM_STREAM:Z

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    sget-boolean v1, Lcom/lge/camera/util/Common;->IS_MUTE_SYSTEM_STREAM:Z

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : OFF"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 523
    sput-boolean v4, Lcom/lge/camera/util/Common;->IS_MUTE_SYSTEM_STREAM:Z

    goto :goto_0
.end method

.method public static setQuickClipScreenCaptureLimit(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1788
    const-string v1, "CameraApp"

    const-string v2, "setQuickClipScreenCaptureLimit"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1793
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 1794
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    const/high16 v2, 0x4

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 1795
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1796
    return-void
.end method

.method public static setTelephonyStateCheckSkip(Z)V
    .locals 3
    .parameter "callCheck"

    .prologue
    .line 1058
    sput-boolean p0, Lcom/lge/camera/util/Common;->isTelephonyStateCheckSkip:Z

    .line 1059
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyStateCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/camera/util/Common;->isTelephonyStateCheckSkip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method public static setVoiceShutterPopupMessage(Landroid/content/Context;Z)V
    .locals 4
    .parameter "c"
    .parameter "show"

    .prologue
    .line 1517
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1518
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1519
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "voice_shutter_message"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1520
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1521
    return-void
.end method

.method public static setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V
    .locals 3
    .parameter "wakeLock"
    .parameter "isAcquire"

    .prologue
    .line 1773
    if-eqz p0, :cond_0

    .line 1774
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "akeLock.isHeld() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAcquire = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    if-eqz p1, :cond_1

    .line 1776
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1781
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public static declared-synchronized showLoadingWindow(Landroid/app/Activity;)V
    .locals 10
    .parameter "activity"

    .prologue
    .line 1543
    const-class v5, Lcom/lge/camera/util/Common;

    monitor-enter v5

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v4, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 1587
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 1546
    :cond_1
    :try_start_1
    const-string v4, "CameraApp"

    const-string v6, "showLoadingWindow-start"

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    .line 1548
    sget-object v4, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    const/high16 v6, -0x100

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1549
    sget-object v4, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    const v6, 0x7f02009b

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1550
    sget-object v4, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1554
    :try_start_2
    const-string v4, "android.view.WindowManagerImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/lge/camera/util/Common;->cls:Ljava/lang/Class;

    .line 1555
    const/4 v2, 0x0

    .line 1556
    .local v2, getDefault:Ljava/lang/reflect/Method;
    sget-object v4, Lcom/lge/camera/util/Common;->cls:Ljava/lang/Class;

    const-string v6, "getDefault"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1557
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1558
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1561
    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcom/lge/camera/util/Common;->windowManagerImpl:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1566
    .end local v2           #getDefault:Ljava/lang/reflect/Method;
    :goto_1
    :try_start_3
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1567
    .local v3, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1568
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1569
    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1570
    const/16 v4, 0x7d5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1571
    const/16 v4, 0x100

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1574
    :try_start_4
    sget-object v4, Lcom/lge/camera/util/Common;->cls:Ljava/lang/Class;

    const-string v6, "addView"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/view/ViewGroup$LayoutParams;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1578
    .local v0, addView:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1579
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1581
    :cond_3
    sget-object v4, Lcom/lge/camera/util/Common;->windowManagerImpl:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/lge/camera/util/Common;->splash:Landroid/widget/ImageView;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 1586
    .end local v0           #addView:Ljava/lang/reflect/Method;
    :goto_2
    :try_start_5
    const-string v4, "CameraApp"

    const-string v6, "showLoadingWindow-end"

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1543
    .end local v3           #params:Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1562
    :catch_0
    move-exception v1

    .line 1563
    .local v1, e:Ljava/lang/Throwable;
    :try_start_6
    const-string v4, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showLoadingWindow error 1 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1583
    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v3       #params:Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v1

    .line 1584
    .restart local v1       #e:Ljava/lang/Throwable;
    const-string v4, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showLoadingWindow error 2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 144
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Failed to show toast!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static toastLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    return-void
.end method

.method public static turnOffAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1623
    const-string v1, "CameraApp"

    const-string v2, "turnOffAnimation"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    sput-boolean v3, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    .line 1625
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    .line 1627
    :try_start_0
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    sput v1, Lcom/lge/camera/util/Common;->backupWidowScale:F

    .line 1628
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    sput v1, Lcom/lge/camera/util/Common;->backupTransitionScale:F

    .line 1630
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1631
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1637
    :goto_0
    return-void

    .line 1632
    :catch_0
    move-exception v0

    .line 1633
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1634
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1635
    .local v0, e:Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public static turnOnAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1639
    sget-boolean v1, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    if-eqz v1, :cond_0

    .line 1640
    sput-boolean v2, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    .line 1645
    const-string v1, "CameraApp"

    const-string v2, "turnOnAnimation"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    .line 1648
    :try_start_0
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    sget v3, Lcom/lge/camera/util/Common;->backupWidowScale:F

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1649
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    sget v3, Lcom/lge/camera/util/Common;->backupTransitionScale:F

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1655
    :cond_0
    :goto_0
    return-void

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1652
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1653
    .local v0, e:Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method
