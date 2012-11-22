.class public Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;
.super Ljava/lang/Object;
.source "UsbSettingsControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/UsbSettingsControl$autorunTimerTask;
    }
.end annotation


# static fields
.field public static mAlreadyObserving:Z

.field private static mAutorunChanging:Z

.field private static mAutorunTimer:Ljava/util/Timer;

.field public static mDirectAutorun:Z

.field public static mDoNotFinish:Z

.field public static mMountInternalMemory:Z

.field public static mMountSDCard:Z

.field public static mOldversion:Z

.field public static mStateInternalMemory:Ljava/lang/String;

.field public static mStateSDCard:Ljava/lang/String;

.field public static mStorageVolumeNum:I

.field private static mTimerContext:Landroid/content/Context;

.field public static mUsbConnected:Z

.field public static mUsbModeChanging:Z

.field public static mUsbSettingsRun:Z

.field public static mX3Bug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mTimerContext:Landroid/content/Context;

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAlreadyObserving:Z

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    const-string v0, ""

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mMountInternalMemory:Z

    const-string v0, ""

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    sput v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mTimerContext:Landroid/content/Context;

    return-object v0
.end method

.method public static cancelAutorunTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sput-object v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    const-string v0, "UsbSettingsControl"

    const-string v1, "[AUTORUN] cancelAutorunTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    sput-object v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mTimerContext:Landroid/content/Context;

    return-void
.end method

.method public static checkStorageVolume(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 168
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .local v3, storageManager:Landroid/os/storage/StorageManager;
    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, ""

    .local v2, state:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v5

    .local v1, length:I
    sput v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v4, v5, v0

    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 178
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    sput-boolean v8, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sput-boolean v8, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sput-boolean v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    goto :goto_2

    :cond_2
    sput-boolean v7, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mMountInternalMemory:Z

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    goto :goto_2

    .line 201
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_3
    const-string v6, "UsbSettingsControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] checkStorageVolume() : mMountSDCard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v6, "UsbSettingsControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] checkStorageVolume() : mStateSDCard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v6, "UsbSettingsControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] checkStorageVolume() : mMountInternalMemory="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mMountInternalMemory:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v6, "UsbSettingsControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] checkStorageVolume() : mStateInternalMemory="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getTetherStatus(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 87
    if-nez p0, :cond_0

    .line 93
    :goto_0
    return v1

    .line 90
    :cond_0
    const-string v2, "UsbSettingsControl"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "shared_tether_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 92
    .local v1, ret:Z
    const-string v2, "UsbSettingsControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUTORUN] getTetherStatus() : status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAutorunTimer()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    return v0
.end method

.method public static isMassStorageEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, isMassStorageEnable:Z
    sget v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    :cond_1
    const/4 v0, 0x1

    .line 231
    :goto_1
    const-string v1, "UsbSettingsControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] isMassStorageEnable() : isMassStorageEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 217
    :cond_3
    sget v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 221
    :cond_5
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 222
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 225
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 228
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setMassStorage(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "set"

    .prologue
    .line 236
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 237
    .local v0, storageManager:Landroid/os/storage/StorageManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 251
    :goto_0
    return v1

    .line 239
    :cond_0
    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    const-string v1, "UsbSettingsControl"

    const-string v2, "[AUTORUN] enableUsbMassStorage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 251
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    const-string v1, "UsbSettingsControl"

    const-string v2, "[AUTORUN] disableUsbMassStorage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_1
.end method

.method public static setTetherStatus(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    .line 76
    if-nez p0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v2, "UsbSettingsControl"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shared_tether_status"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    const-string v2, "shared_tether_status"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 83
    .local v1, savedStatus:Z
    const-string v2, "UsbSettingsControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUTORUN] setTetherStatus() : status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startAutorunTimer(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    :cond_0
    sput-object p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mTimerContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl$autorunTimerTask;

    invoke-direct {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl$autorunTimerTask;-><init>()V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    const-string v0, "UsbSettingsControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] startAutorunTimer() : mAutorunChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "path"
    .parameter "value"

    .prologue
    .line 97
    const/4 v4, 0x0

    .line 99
    .local v4, writeSuccess:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 102
    .local v2, out:Ljava/io/BufferedWriter;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v6, 0x80

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 106
    const/4 v4, 0x1

    .line 110
    const-string v5, "UsbSettingsControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] write to file this value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to this path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v3, :cond_0

    .line 113
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 122
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return v4

    .line 114
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/IOException;
    const/4 v4, 0x0

    move-object v2, v3

    .line 117
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 108
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    const/4 v4, 0x0

    .line 110
    const-string v5, "UsbSettingsControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] write to file this value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to this path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v2, :cond_1

    .line 113
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 114
    :catch_2
    move-exception v0

    .line 115
    const/4 v4, 0x0

    .line 117
    goto :goto_0

    .line 110
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    const-string v6, "UsbSettingsControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] write to file this value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to this path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v2, :cond_2

    .line 113
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 116
    :cond_2
    :goto_3
    throw v5

    .line 114
    :catch_3
    move-exception v0

    .line 115
    .restart local v0       #e:Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_3

    .line 119
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v5, "UsbSettingsControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] can not write to this file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to this path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 107
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method
