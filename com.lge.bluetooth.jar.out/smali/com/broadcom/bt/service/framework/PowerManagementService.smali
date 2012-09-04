.class public Lcom/broadcom/bt/service/framework/PowerManagementService;
.super Lcom/broadcom/bt/service/framework/IPowerManager$Stub;
.source "PowerManagementService.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IPowerManagementService;


# static fields
.field private static final BT_CTRL:I = 0x0

.field private static final BT_MASK:I = 0x1

.field private static final DBG:Z = true

.field private static final FM_CTRL:I = 0x1

.field private static final FM_MASK:I = 0x2

.field private static final GPS_CTRL:I = 0x2

.field private static final GPS_MASK:I = 0x4

.field private static final MESSAGE_BT_BOOTUP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PowerManagmentService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 73
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManagementService;->classInitNative()V

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;-><init>()V

    .line 79
    const-string v0, "PowerManagmentService"

    const-string v1, "default constructor is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/PowerManagementService;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->initializeNativeDataNative()V

    .line 86
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native disableBtNative()I
.end method

.method private native disableFmNative()I
.end method

.method private native enableBtNative()I
.end method

.method private native enableFmNative()I
.end method

.method private native getCurrentStateNative()I
.end method

.method private native initializeNativeDataNative()V
.end method


# virtual methods
.method public disableBt()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->disableBtNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 121
    :goto_0
    return v1

    .line 117
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "Unable to disable BT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableFm()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->disableFmNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 103
    :goto_0
    return v1

    .line 99
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "Unable to disable FM"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableBt()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->enableBtNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 112
    :goto_0
    return v1

    .line 108
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "Unable to enbale BT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableFm()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->enableFmNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 93
    :goto_0
    return v1

    .line 90
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "Unable to enable FM"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getInstance(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 2
    .parameter "context"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/PowerManagementService;->mContext:Landroid/content/Context;

    .line 149
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->initializeNativeDataNative()V

    .line 150
    const-string v0, "PowerManagmentService"

    const-string v1, "initializeNativeDataNative is done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isBtEnabled()Z
    .locals 4

    .prologue
    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->getCurrentStateNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    .local v0, mCurrentState:I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 139
    const/4 v2, 0x1

    .line 143
    .end local v0           #mCurrentState:I
    :goto_0
    return v2

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "Unable to get current BT state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isfmEnabled()Z
    .locals 4

    .prologue
    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->getCurrentStateNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 127
    .local v0, mCurrentState:I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x1

    .line 132
    .end local v0           #mCurrentState:I
    :goto_0
    return v2

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "unable to get current FM state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
