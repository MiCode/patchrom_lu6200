.class public final enum Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;
.super Ljava/lang/Enum;
.source "DataConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DCM_Carrier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

.field public static final enum DCM_DCM:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

.field public static final enum DCM_KT:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

.field public static final enum DCM_LGU:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

.field public static final enum DCM_MAX:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

.field public static final enum DCM_SKT:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    const-string v1, "DCM_SKT"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->DCM_SKT:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    const-string v1, "DCM_KT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->DCM_KT:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    const-string v1, "DCM_LGU"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->DCM_LGU:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    const-string v1, "DCM_DCM"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->DCM_DCM:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    const-string v1, "DCM_MAX"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->DCM_MAX:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->DCM_SKT:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->DCM_KT:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->DCM_LGU:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->DCM_DCM:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->DCM_MAX:Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->$VALUES:[Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->$VALUES:[Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;

    return-object v0
.end method
