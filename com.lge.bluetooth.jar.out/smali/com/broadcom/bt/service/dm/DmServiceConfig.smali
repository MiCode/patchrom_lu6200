.class public Lcom/broadcom/bt/service/dm/DmServiceConfig;
.super Ljava/lang/Object;
.source "DmServiceConfig.java"


# static fields
.field public static final D:Z = true

.field public static final DM_SERVICE_ENABLED:Z = true

.field public static final DM_SVC_STATE_CHANGE_ACTION:Ljava/lang/String; = "broadcom.bt.intent.action.DM_SVC_STATE_CHANGE"

.field public static final EXTRA_DM_SVC_NAME:Ljava/lang/String; = "dm_svc_name"

.field public static final EXTRA_DM_SVC_STATE:Ljava/lang/String; = "dm_svc_state"

.field public static final MODE_LOAD_AS_SYSTEM_SVC:I = 0x1

.field public static final MODE_USE_APP_SERVICES:I = 0x2

.field static final SERVICES:[Ljava/lang/String; = null

.field static final SERVICES_AVAILABLE:[Z = null

.field static final SERVICES_STARTUP_ENABLED:[Z = null

.field public static final SETTINGS_PREFIX:Ljava/lang/String; = "dm_svcst_"

.field public static final STATE_NOT_AVAILABLE:I = -0x1

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field public static final SVC_STATE_STARTED:I = 0x2

.field public static final SVC_STATE_STOPPED:I = 0x1

.field static final USE_BROADCAST_INTENTS:Z = true

.field static final USE_CALLBACKS:Z = false

.field public static final V:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 53
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "bluetooth_dm_service"

    aput-object v1, v0, v3

    sput-object v0, Lcom/broadcom/bt/service/dm/DmServiceConfig;->SERVICES:[Ljava/lang/String;

    .line 63
    new-array v0, v2, [Z

    aput-boolean v2, v0, v3

    sput-object v0, Lcom/broadcom/bt/service/dm/DmServiceConfig;->SERVICES_AVAILABLE:[Z

    .line 75
    new-array v0, v2, [Z

    aput-boolean v2, v0, v3

    sput-object v0, Lcom/broadcom/bt/service/dm/DmServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "ctx"
    .parameter "svcName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/broadcom/bt/service/dm/DmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dm_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 164
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v1

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_0
    move v1, v2

    .line 161
    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    move v1, v2

    .line 164
    goto :goto_0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "svcName"

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/broadcom/bt/service/dm/DmServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 147
    sget-object v1, Lcom/broadcom/bt/service/dm/DmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lcom/broadcom/bt/service/dm/DmServiceConfig;->SERVICES_AVAILABLE:[Z

    aget-boolean v1, v1, v0

    .line 151
    :goto_1
    return v1

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
