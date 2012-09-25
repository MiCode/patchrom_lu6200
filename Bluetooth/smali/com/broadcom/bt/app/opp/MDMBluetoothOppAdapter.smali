.class public Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;
.super Ljava/lang/Object;
.source "MDMBluetoothOppAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "MDMBluetoothOppAdapter"

    sput-object v0, Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;->mInstance:Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;-><init>()V

    sput-object v0, Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;->mInstance:Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;

    .line 20
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;->mInstance:Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;

    return-object v0
.end method


# virtual methods
.method public checkBluetoothAllowed(Landroid/content/ComponentName;Landroid/content/Context;)Z
    .locals 2
    .parameter "who"
    .parameter "context"

    .prologue
    .line 24
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 25
    sget-object v0, Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;->TAG:Ljava/lang/String;

    const-string v1, "LGMDM DevicePolicyManager DisAllow Bluetooth "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const v1, 0x20b0045

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->sendToastMessageId(I)V

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
