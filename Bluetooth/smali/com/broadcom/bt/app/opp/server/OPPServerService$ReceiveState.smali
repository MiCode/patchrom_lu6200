.class public final enum Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;
.super Ljava/lang/Enum;
.source "OPPServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/server/OPPServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ReceiveState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

.field public static final enum STATE_OPS_ACCESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

.field public static final enum STATE_OPS_CLOSED:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

.field public static final enum STATE_OPS_CLOSING:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

.field public static final enum STATE_OPS_PROGRESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

.field public static final enum STATE_OPS_RECEIVED:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

.field public static final enum STATE_OPS_START:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

.field public static final enum UNKNOWN:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->UNKNOWN:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    new-instance v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    const-string v1, "STATE_OPS_START"

    invoke-direct {v0, v1, v4}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_START:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    new-instance v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    const-string v1, "STATE_OPS_ACCESS"

    invoke-direct {v0, v1, v5}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_ACCESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    new-instance v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    const-string v1, "STATE_OPS_PROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_PROGRESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    new-instance v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    const-string v1, "STATE_OPS_RECEIVED"

    invoke-direct {v0, v1, v7}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_RECEIVED:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    new-instance v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    const-string v1, "STATE_OPS_CLOSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_CLOSING:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    new-instance v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    const-string v1, "STATE_OPS_CLOSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_CLOSED:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    sget-object v1, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->UNKNOWN:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_START:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_ACCESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_PROGRESS:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_RECEIVED:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_CLOSING:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->STATE_OPS_CLOSED:Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->$VALUES:[Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;
    .locals 1
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    return-object v0
.end method

.method public static values()[Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->$VALUES:[Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    invoke-virtual {v0}, [Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/broadcom/bt/app/opp/server/OPPServerService$ReceiveState;

    return-object v0
.end method
