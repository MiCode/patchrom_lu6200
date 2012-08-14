.class public interface abstract Landroid/provider/Telephony$TextBasedLGESmsColumns;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextBasedLGESmsColumns"
.end annotation


# static fields
.field public static final ICC_URI:Landroid/net/Uri; = null

.field public static final INDEX_ON_ICC:Ljava/lang/String; = "index_on_icc"

.field public static final LGE_CALLBACK_NUMBER:Ljava/lang/String; = "lgeCallbackNumber"

.field public static final LGE_MSGTYPE_SIM:I = 0x7

.field public static final LGE_SERVICE_ACTION:Ljava/lang/String; = "lgeAction"

.field public static final LGE_SERVICE_CREATED:Ljava/lang/String; = "lgeCreated"

.field public static final LGE_SERVICE_DOC:Ljava/lang/String; = "lgeDoc"

.field public static final LGE_SERVICE_DOINSTALL:Ljava/lang/String; = "doInstalled"

.field public static final LGE_SERVICE_EXPIRES:Ljava/lang/String; = "lgeExpires"

.field public static final LGE_SERVICE_MAC:Ljava/lang/String; = "lgeMac"

.field public static final LGE_SERVICE_MSGTYPE:Ljava/lang/String; = "lgeMsgType"

.field public static final LGE_SERVICE_MSG_SENDER:Ljava/lang/String; = "service_msg_sender_address"

.field public static final LGE_SERVICE_RECEIVED:Ljava/lang/String; = "lgeReceived"

.field public static final LGE_SERVICE_REMAIN_NUM:Ljava/lang/String; = "lgePinRemainCnt"

.field public static final LGE_SERVICE_SEC:Ljava/lang/String; = "lgeSec"

.field public static final LGE_SERVICE_SIID:Ljava/lang/String; = "lgeSiid"

.field public static final STATUS_EXPIRED:I = 0x46

.field public static final STATUS_MAX:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$TextBasedLGESmsColumns;->ICC_URI:Landroid/net/Uri;

    return-void
.end method
