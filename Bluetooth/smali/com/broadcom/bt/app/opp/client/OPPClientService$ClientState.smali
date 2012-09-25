.class final enum Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;
.super Ljava/lang/Enum;
.source "OPPClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/client/OPPClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ClientState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum STATE_CONTENT_SETUP:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum STATE_OPC_CLOSED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum STATE_OPC_CLOSING:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum STATE_OPC_ENABLE:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum STATE_OPC_INIT:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum STATE_OPC_OPEN:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum STATE_OPC_PROGRESS:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum STATE_OPC_PUSHED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum STATE_OPC_RECEIVED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum STATE_OPC_START:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

.field public static final enum UNKNOWN:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;


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
    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->UNKNOWN:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "STATE_OPC_INIT"

    invoke-direct {v0, v1, v4}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_INIT:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "STATE_CONTENT_SETUP"

    invoke-direct {v0, v1, v5}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_CONTENT_SETUP:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "STATE_OPC_ENABLE"

    invoke-direct {v0, v1, v6}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_ENABLE:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "STATE_OPC_START"

    invoke-direct {v0, v1, v7}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_START:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "STATE_OPC_OPEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_OPEN:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "STATE_OPC_PROGRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PROGRESS:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "STATE_OPC_PUSHED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PUSHED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "STATE_OPC_RECEIVED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_RECEIVED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "STATE_OPC_CLOSING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_CLOSING:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    const-string v1, "STATE_OPC_CLOSED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_CLOSED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    .line 60
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->UNKNOWN:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_INIT:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_CONTENT_SETUP:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_ENABLE:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_START:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_OPEN:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PROGRESS:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_PUSHED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_RECEIVED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_CLOSING:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_CLOSED:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->$VALUES:[Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;
    .locals 1
    .parameter

    .prologue
    .line 60
    const-class v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    return-object v0
.end method

.method public static values()[Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->$VALUES:[Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v0}, [Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    return-object v0
.end method
