.class Lcom/broadcom/bt/service/ftp/FTPServiceConfig;
.super Ljava/lang/Object;
.source "FTPServiceConfig.java"


# static fields
.field static final D:Z = true

.field static final FORCE_ACCESS_REQUEST:Z = false

.field static final SUPPORTED_ACTION_COMMANDS:[B = null

.field static final USE_BROADCAST_INTENTS:Z = true

.field static final USE_CALLBACKS:Z = false

.field static final USE_LEGACY_BROADCAST_INTENTS:Z = false

.field static final USE_MEDIA_SCANNER:Z = true

.field static final V:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/broadcom/bt/service/ftp/FTPServiceConfig;->SUPPORTED_ACTION_COMMANDS:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
