.class public final Lcom/lge/provider/SettingsEx$Secure;
.super Lcom/lge/provider/SettingsEx$NameValueTable;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/SettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static sNameValueCache:Lcom/lge/provider/SettingsEx$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3274
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/provider/SettingsEx$Secure;->sNameValueCache:Lcom/lge/provider/SettingsEx$NameValueCache;

    .line 3523
    const-string v0, "content://settings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/SettingsEx$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 5406
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "adb_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mock_location"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "parental_control_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "parental_control_redirect_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "usb_mass_storage_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "accessibility_script_injection"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "backup_auto_restore"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "enabled_accessibility_services"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "touch_exploration_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "accessibility_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tts_use_defaults"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "tts_default_rate"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tts_default_pitch"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "tts_default_synth"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "tts_default_lang"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "tts_default_country"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "tts_enabled_plugins"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "tts_default_locale"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "wifi_networks_available_notification_on"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "wifi_networks_available_repeat_delay"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "wifi_num_open_networks_kept"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mount_play_not_snd"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "mount_ums_autostart"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "mount_ums_prompt"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mount_ums_notify_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ui_night_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "lock_screen_owner_info"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "lock_screen_owner_info_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "kt_3g_vcc_activate"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "kt_3g_vcc_activate_alert"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/provider/SettingsEx$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3270
    invoke-direct {p0}, Lcom/lge/provider/SettingsEx$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 3327
    invoke-static {p0, p1}, Lcom/lge/provider/SettingsEx$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3329
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 3331
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 3330
    .restart local p2
    :catch_0
    move-exception v0

    .line 3331
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 3283
    const-class v1, Lcom/lge/provider/SettingsEx$Secure;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/provider/SettingsEx$Secure;->sNameValueCache:Lcom/lge/provider/SettingsEx$NameValueCache;

    if-nez v0, :cond_0

    .line 3284
    new-instance v0, Lcom/lge/provider/SettingsEx$NameValueCache;

    const-string v2, "sys.settings_secure_version"

    sget-object v3, Lcom/lge/provider/SettingsEx$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "GET_secure"

    invoke-direct {v0, v2, v3, v4}, Lcom/lge/provider/SettingsEx$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/provider/SettingsEx$Secure;->sNameValueCache:Lcom/lge/provider/SettingsEx$NameValueCache;

    .line 3287
    :cond_0
    sget-object v0, Lcom/lge/provider/SettingsEx$Secure;->sNameValueCache:Lcom/lge/provider/SettingsEx$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/lge/provider/SettingsEx$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3283
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3377
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/lge/provider/SettingsEx$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3299
    sget-object v0, Lcom/lge/provider/SettingsEx$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/lge/provider/SettingsEx$Secure;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
