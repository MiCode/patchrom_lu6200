.class public interface abstract Lcom/lge/cappuccino/IMdm;
.super Ljava/lang/Object;
.source "IMdm.java"


# static fields
.field public static final LGMDM_ADAPTER_APPLICATION:Ljava/lang/String; = "LGMDMApplicationUIAdapter"

.field public static final LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String; = "LGMDMBluetoothAdapter"

.field public static final LGMDM_ADAPTER_BROWSER:Ljava/lang/String; = "LGMDMBrowserUIAdapter"

.field public static final LGMDM_ADAPTER_EMAIL:Ljava/lang/String; = "LGMDMEmailUIAdapter"

.field public static final LGMDM_ADAPTER_EXTERNALMEMORY:Ljava/lang/String; = "LGMDMExternalAdapter"

.field public static final LGMDM_ADAPTER_GPS:Ljava/lang/String; = "LGMDMGPSUIAdpater"

.field public static final LGMDM_ADAPTER_LOVKSCREEN:Ljava/lang/String; = "LGMDMUILockScreenProviderAdapter"

.field public static final LGMDM_ADAPTER_MESSAGE:Ljava/lang/String; = "LGMDMMessageUIAdapter"

.field public static final LGMDM_ADAPTER_MOBILENETWORK:Ljava/lang/String; = "LGMDMMobileNetworkAdapter"

.field public static final LGMDM_ADAPTER_PASSWORD:Ljava/lang/String; = "LGMDMPasswordUIAdapter"

.field public static final LGMDM_ADAPTER_SCREENCAPTURE:Ljava/lang/String; = "LGMDMScreenCaptureUIAdapter"

.field public static final LGMDM_ADAPTER_TETHERING:Ljava/lang/String; = "LGMDMTetheringUIAdapter"

.field public static final LGMDM_ADAPTER_UI_HANDLER:Ljava/lang/String; = "LGMDMUIHandlerAdapter"

.field public static final LGMDM_ADAPTER_USB:Ljava/lang/String; = "LGMDMUsbUIAdapter"

.field public static final LGMDM_ADAPTER_WIFI:Ljava/lang/String; = "LGMDMWifiUIAdapter"

.field public static final LGMDM_ADAPTER_WIPER:Ljava/lang/String; = "LGMDMWiperAdapter"

.field public static final LGMDM_MOUNT_REJECT:I = -0x63

.field public static final LGMDM_UI_MANAGER_SERVICE:Ljava/lang/String; = "LGMDMUIManager"

.field public static final PASSWORD_RECOVERY_MODE:Ljava/lang/String; = "PASSWORD_RECOVERY"


# virtual methods
.method public abstract addFilterUsbDevicecManagerReceiver(Landroid/content/IntentFilter;)V
.end method

.method public abstract addFilterWifiP2pServiceReceiver(Landroid/content/IntentFilter;)V
.end method

.method public abstract checkAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;)Z
.end method

.method public abstract checkApplicationEnable(Ljava/lang/String;)Z
.end method

.method public abstract checkBluetoothAudioOlny(Ljava/lang/String;)Z
.end method

.method public abstract checkBluetoothAudioOnly(Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledMountService(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledRemoveAdmin(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledSettings(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledSettingsProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledSettingsProvider(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkMessageMdmWifiP2p(I)Z
.end method

.method public abstract checkMoveTaskToFrontLocked(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract checkPasswordRecovery(Ljava/lang/String;Landroid/content/Context;)Z
.end method

.method public abstract checkSimplepassword(Ljava/lang/String;)Z
.end method

.method public abstract checkStartActivityLocked(Landroid/content/ComponentName;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)I
.end method

.method public abstract checkUnsignedApplicationEnable(Ljava/lang/String;)Z
.end method

.method public abstract checkWebView(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract computePasswordComplexity(Ljava/lang/String;)I
.end method

.method public abstract computePasswordSimplicity(Ljava/lang/String;)Z
.end method

.method public abstract factoryResetWithExternalMemory()V
.end method

.method public abstract getAllowMobileNetwork(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowPasswordComplexForEAS(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowScreenCapture(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowSendingSms(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowSimplePassword(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowUnknownSourceInstallation(Landroid/content/ComponentName;)Z
.end method

.method public abstract getEncryptionPolicy()I
.end method

.method public abstract getEncryptionPolicy(Landroid/content/ComponentName;)I
.end method

.method public abstract getEncryptionPolicyForEas()I
.end method

.method public abstract getEnforcePasswordChange()Z
.end method

.method public abstract getExternalMemoryMounted()Z
.end method

.method public abstract getLockoutNow(Landroid/content/ComponentName;)Z
.end method

.method public abstract getLockoutNowLevel(Landroid/content/ComponentName;)I
.end method

.method public abstract getManualSyncWhenRoaming()Z
.end method

.method public abstract getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I
.end method

.method public abstract getPasswordRecoveryByEas(Landroid/content/Context;)Z
.end method

.method public abstract getPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract getRequestedPasswordExpiration(Lcom/android/internal/widget/LockPatternUtils;)I
.end method

.method public abstract handleManualSync(Landroid/content/ComponentName;)V
.end method

.method public abstract isAllowSendMMS(Landroid/content/ComponentName;)Z
.end method

.method public abstract isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z
.end method

.method public abstract isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isFailedInstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract isFailedInstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;I)Z
.end method

.method public abstract isFailedUninstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract isFailedUninstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;I)Z
.end method

.method public abstract isMessageApp(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract launchService(Landroid/content/Context;)V
.end method

.method public abstract recevieMDMUsbIntent(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract recevieWifiP2pIntent(Ljava/lang/String;)Z
.end method

.method public abstract removeActiveAdmin(Landroid/content/ComponentName;)V
.end method

.method public abstract sendToastMessageId(I)V
.end method

.method public abstract setActiveAdmin(Landroid/content/ComponentName;)V
.end method

.method public abstract setAllowWipeDataMaster(Z)V
.end method

.method public abstract setCameraState(Z)V
.end method

.method public abstract setCameraStop(Z)V
.end method

.method public abstract showEncryptionPolicyDialog(Landroid/content/Context;)Z
.end method

.method public abstract wipeData(I)V
.end method
