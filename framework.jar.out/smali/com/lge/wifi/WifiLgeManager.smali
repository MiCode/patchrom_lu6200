.class public Lcom/lge/wifi/WifiLgeManager;
.super Ljava/lang/Object;
.source "WifiLgeManager.java"


# static fields
.field public static final ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final AUTOIP_NOTIFICATION_ACTION:Ljava/lang/String; = "android.net.wifi.AUTOIP_CONNECTION_NOTIFICATION"

.field public static final EXTRA_P2P_WIFI_STATE:Ljava/lang/String; = "lge_wifi_p2p_state"

.field private static final TAG:Ljava/lang/String; = "WifiLgeManager"

.field public static final WIFI_CURRENT_AP_FRAUD:I = 0x3

.field public static final WIFI_CURRENT_AP_OPEN:I = 0x1

.field public static final WIFI_CURRENT_AP_WEP:I = 0x2

.field public static final WIFI_NOTIFY_IMS_STOP_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_NOTIFY_IMS_STOP_ACTION"

.field public static final WIFI_NOTIFY_IMS_STOP_REPLY_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_NOTIFY_IMS_STOP_REPLY_ACTION"

.field public static final WIFI_NOTIFY_VT_ABNORMAL_ACTION:Ljava/lang/String; = "com.lge.ims.action.IMS_STARTED"

.field public static final WIFI_NOTIFY_VT_END_ACTION:Ljava/lang/String; = "com.lge.ims.action.VT_ENDED"

.field public static final WIFI_NOTIFY_VT_START_ACTION:Ljava/lang/String; = "com.lge.ims.action.VT_STARTED"

.field public static final WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wifi.p2p.STATE_CHANGED"

.field public static final WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final WIFI_P2P_STATE_DISABLING:I = 0x0

.field public static final WIFI_P2P_STATE_ENABLED:I = 0x3

.field public static final WIFI_P2P_STATE_ENABLING:I = 0x2

.field public static final WIFI_P2P_STATE_NOT_SUPPORTED:I = -0x1

.field public static final WIFI_P2P_STATE_UNKNOWN:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static WifiOffHandshakeWithIMS(Lcom/lge/wifi_iface/WifiServiceExtIface;)Z
    .locals 3
    .parameter "wifiServiceExt"

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/lge/wifi_iface/WifiServiceExtIface;->WifiOffHandshakeWithIMS()V

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 62
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    invoke-interface {p0}, Lcom/lge/wifi_iface/WifiServiceExtIface;->WifiOffHandshakeWithIMS_ReplyCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-interface {p0}, Lcom/lge/wifi_iface/WifiServiceExtIface;->WifiOffHandshakeWithIMS_Clear()V

    .line 70
    const/4 v1, 0x1

    .line 75
    :goto_2
    return v1

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {p0}, Lcom/lge/wifi_iface/WifiServiceExtIface;->WifiOffHandshakeWithIMS_Clear()V

    .line 75
    const/4 v1, 0x0

    goto :goto_2

    .line 64
    :catch_0
    move-exception v1

    goto :goto_1
.end method
