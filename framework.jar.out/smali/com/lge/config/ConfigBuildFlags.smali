.class public final Lcom/lge/config/ConfigBuildFlags;
.super Ljava/lang/Object;
.source "ConfigBuildFlags.java"


# static fields
.field public static final CAPP_ALMOND:Z

.field public static final CAPP_COMPAT:Z

.field public static final CAPP_DRM:Z

.field public static final CAPP_FONTS:Z

.field public static final CAPP_GHOST_FINGER:Z

.field public static final CAPP_KEYLED_TIMEOUT:Z

.field public static final CAPP_KEY_EXCEPTION:Z

.field public static final CAPP_KEY_LIGHT_OFF:Z

.field public static final CAPP_LOCKSCREEN:Z

.field public static final CAPP_MDM:Z

.field public static final CAPP_MENU_LONG:Z

.field public static final CAPP_NFS:Z

.field public static final CAPP_OPTIMUSUI:Z

.field public static final CAPP_OSP:Z

.field public static final CAPP_PRADAUI:Z

.field public static final CAPP_QUICKCLIP_KEY:Z

.field public static final CAPP_REAL3D:Z

.field public static final CAPP_RESOURCE:Z

.field public static final CAPP_TOUCH_LDI:Z

.field public static final CAPP_TOUCH_SCROLLER:Z

.field public static final CAPP_UPLUSAPI:Z

.field public static final CAPP_VALID_BATTERYID:Z

.field public static final CAPP_WAPSERVICE:Z

.field public static final CAPP_WIRELESS_CHARGING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-string/jumbo v0, "ro.lge.capp_wapservice"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WAPSERVICE:Z

    .line 33
    const-string/jumbo v0, "ro.lge.capp_key_light_off"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_LIGHT_OFF:Z

    .line 34
    const-string/jumbo v0, "ro.lge.capp_drm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    .line 35
    const-string/jumbo v0, "ro.lge.capp_key_exception"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_EXCEPTION:Z

    .line 36
    const-string/jumbo v0, "ro.lge.capp_osp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_OSP:Z

    .line 37
    const-string/jumbo v0, "ro.lge.capp_lockscreen"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    .line 38
    const-string/jumbo v0, "ro.lge.capp_resource"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_RESOURCE:Z

    .line 39
    const-string/jumbo v0, "ro.lge.capp_almond"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_ALMOND:Z

    .line 40
    const-string/jumbo v0, "ro.lge.capp_menu_long"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MENU_LONG:Z

    .line 41
    const-string/jumbo v0, "ro.lge.capp_mdm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    .line 42
    const-string/jumbo v0, "ro.lge.capp_uplus_api"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_UPLUSAPI:Z

    .line 43
    const-string/jumbo v0, "ro.lge.capp_keyled_timeout"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEYLED_TIMEOUT:Z

    .line 44
    const-string/jumbo v0, "ro.lge.capp_ghost_finger"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_GHOST_FINGER:Z

    .line 45
    const-string/jumbo v0, "ro.lge.fonts"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS:Z

    .line 46
    const-string/jumbo v0, "ro.lge.capp_optimusui"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_OPTIMUSUI:Z

    .line 47
    const-string/jumbo v0, "ro.lge.capp_pradaui"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_PRADAUI:Z

    .line 48
    const-string/jumbo v0, "ro.lge.capp_valid_batteryid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_VALID_BATTERYID:Z

    .line 49
    const-string/jumbo v0, "ro.lge.capp_touch_scroller"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    .line 50
    const-string/jumbo v0, "ro.lge.capp_touch_ldi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_LDI:Z

    .line 51
    const-string/jumbo v0, "ro.lge.capp_real3d"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    .line 52
    const-string/jumbo v0, "ro.lge.capp_wireless_charging"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WIRELESS_CHARGING:Z

    .line 53
    const-string/jumbo v0, "ro.lge.capp_nfs"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_NFS:Z

    .line 54
    const-string/jumbo v0, "ro.lge.capp_quickclip_key"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_QUICKCLIP_KEY:Z

    .line 55
    const-string/jumbo v0, "ro.lge.capp_compat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_COMPAT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
