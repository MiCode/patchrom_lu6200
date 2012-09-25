.class public final Lcom/lge/provider/SettingsEx$System;
.super Lcom/lge/provider/SettingsEx$NameValueTable;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/SettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

.field public static final DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_VOIPCALL:Landroid/net/Uri;

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final USER_PREFERRED_SUBS:[Ljava/lang/String;

.field public static final VOLUME_SETTINGS:[Ljava/lang/String;

.field private static sNameValueCache:Lcom/lge/provider/SettingsEx$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 793
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->sNameValueCache:Lcom/lge/provider/SettingsEx$NameValueCache;

    .line 797
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 798
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 799
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 800
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 801
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 802
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 803
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 804
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 805
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 806
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 807
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 808
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 809
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "logging_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 810
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "parental_control_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 811
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "parental_control_last_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 812
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "parental_control_redirect_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 813
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "settings_classname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 816
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 817
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 818
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 819
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 820
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 821
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ap_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 822
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_background_check_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 823
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_background_check_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 824
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_background_check_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 825
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_initial_ignored_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 826
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_max_ap_checks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 827
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 828
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 829
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ping_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 830
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ping_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 832
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "roaming_mode_selected_system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 833
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "roaming_mode_domestic_voice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 834
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "roaming_mode_domestic_voice_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 835
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "roaming_mode_domestic_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 836
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "roaming_mode_domestic_data_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 837
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "roaming_mode_international_voice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 838
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "roaming_mode_international_voice_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 839
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "roaming_mode_international_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 840
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "roaming_mode_international_data_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "rguard_domestic_voice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 842
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "rguard_domestic_voice_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 843
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "rguard_domestic_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 844
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "rguard_domestic_data_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 845
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "rguard_international_voice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 846
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "rguard_international_voice_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 847
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "rguard_international_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 848
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "rguard_international_data_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 849
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "cbox_international_sms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 850
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "cbox_international_sms_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1170
    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->CONTENT_URI:Landroid/net/Uri;

    .line 1600
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "volume_voice"

    aput-object v1, v0, v3

    const-string v1, "volume_system"

    aput-object v1, v0, v4

    const-string v1, "volume_ring"

    aput-object v1, v0, v5

    const-string v1, "volume_music"

    aput-object v1, v0, v6

    const-string v1, "volume_alarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "volume_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 1631
    const-string v0, "ringtone"

    invoke-static {v0}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1647
    const-string v0, "notification_sound"

    invoke-static {v0}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1663
    const-string v0, "alarm_alert"

    invoke-static {v0}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 1832
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "user_preferred_sub1"

    aput-object v1, v0, v3

    const-string v1, "user_preferred_sub2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    .line 2881
    const/16 v0, 0x51

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_networks_available_notification_on"

    aput-object v1, v0, v3

    const-string v1, "stay_on_while_plugged_in"

    aput-object v1, v0, v4

    const-string v1, "wifi_use_static_ip"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v6

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wifi_static_netmask"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wifi_static_dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_discoverability"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bluetooth_discoverability_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dim_screen"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "screen_off_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "screen_brightness"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "screen_brightness_mode"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "vibrate_on"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mode_ringer"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mode_ringer_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mute_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "volume_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "volume_system"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "volume_ring"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "volume_music"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "volume_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "volume_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "volume_voice_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "volume_system_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "volume_ring_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "volume_music_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "volume_alarm_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "volume_notification_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "volume_bluetooth_sco_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "vibrate_in_silent"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "auto_replace"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "auto_caps"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "auto_punctuate"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "auto_time"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "auto_time_zone"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "time_12_24"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "date_format"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "accelerometer_rotation"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "user_rotation"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "battery_condition_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "battery_condition"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "dtmf_tone_type"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "call_auto_retry"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "hearing_aid"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "tty_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "sound_effects_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "haptic_feedback_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "power_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "dock_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "lockscreen_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "show_web_suggestions"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "notification_light_pulse"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "sip_call_options"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "sip_receive_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "lg_local_plus_dial"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "lg_int_plus_dial"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "proximity_sensor_check"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "pointer_speed"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "start_ip"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "end_ip"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "mask"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "prefix_length"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "gateway"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "dns_server"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "cdma_dns_server_1"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "cdma_dns_server_2"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "dhcp_server"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "wifi_auto_connect"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "wifi_ssid_visibility"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "wifi_ap_current_max_client"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "tether_entitlement_check_state"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "tether_entitlement_check_interval"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "wifi_networks_available_notification_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "otksl_count"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "mhs_usage_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 3252
    const-string v0, "ringtone_voipcall"

    invoke-static {v0}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->DEFAULT_RINGTONE_VOIPCALL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/lge/provider/SettingsEx$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/provider/SettingsEx$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 953
    invoke-static {p0, p1}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/lge/provider/SettingsEx$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/lge/provider/SettingsEx$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 925
    invoke-static {p0, p1}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 929
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 928
    .restart local p2
    :catch_0
    move-exception v0

    .line 929
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/provider/SettingsEx$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1022
    invoke-static {p0, p1}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, valString:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/lge/provider/SettingsEx$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/lge/provider/SettingsEx$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 867
    const-class v1, Lcom/lge/provider/SettingsEx$System;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    const-string v0, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {p0, p1}, Lcom/lge/provider/SettingsEx$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 876
    :goto_0
    monitor-exit v1

    return-object v0

    .line 872
    :cond_0
    :try_start_1
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->sNameValueCache:Lcom/lge/provider/SettingsEx$NameValueCache;

    if-nez v0, :cond_1

    .line 873
    new-instance v0, Lcom/lge/provider/SettingsEx$NameValueCache;

    const-string v2, "sys.settings_system_version"

    sget-object v3, Lcom/lge/provider/SettingsEx$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "GET_system"

    invoke-direct {v0, v2, v3, v4}, Lcom/lge/provider/SettingsEx$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/provider/SettingsEx$System;->sNameValueCache:Lcom/lge/provider/SettingsEx$NameValueCache;

    .line 876
    :cond_1
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->sNameValueCache:Lcom/lge/provider/SettingsEx$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/lge/provider/SettingsEx$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "name"

    .prologue
    .line 902
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    sget-object v0, Lcom/lge/provider/SettingsEx$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/lge/provider/SettingsEx$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 907
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 975
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/lge/provider/SettingsEx$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1044
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/lge/provider/SettingsEx$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 887
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v0, 0x0

    .line 892
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lge/provider/SettingsEx$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/lge/provider/SettingsEx$System;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
