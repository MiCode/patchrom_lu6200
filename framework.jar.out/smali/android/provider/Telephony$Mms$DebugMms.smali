.class public final Landroid/provider/Telephony$Mms$DebugMms;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugMms"
.end annotation


# static fields
.field public static final ACTICEPILOT:Ljava/lang/String; = "active_pilot"

.field public static final CHANELNUM:Ljava/lang/String; = "channel_number"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEBUGMMS_ID:Ljava/lang/String; = "debugmms_id"

.field public static final DESTADDR:Ljava/lang/String; = "destination_addr"

.field public static final ECLO:Ljava/lang/String; = "ec_lo"

.field public static final ERRORCODE:Ljava/lang/String; = "error_spellout"

.field public static final ERRORCODENUM:Ljava/lang/String; = "error_codes"

.field public static final MEDIAUSED:Ljava/lang/String; = "mediaformatused"

.field public static final MESSAGEID:Ljava/lang/String; = "message_id"

.field public static final ORIGADDR:Ljava/lang/String; = "orig_addr"

.field public static final PREVINUSE:Ljava/lang/String; = "prev_in_use"

.field public static final RSSILEVEL:Ljava/lang/String; = "rssi_level"

.field public static final RXPOWER:Ljava/lang/String; = "rx_power"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TOKEN_KEY:Ljava/lang/String; = "token_key"

.field public static final TXORRX:Ljava/lang/String; = "txorrx"

.field public static final TXPOWER:Ljava/lang/String; = "tx_power"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3791
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "vzwdebug"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms$DebugMms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3789
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
