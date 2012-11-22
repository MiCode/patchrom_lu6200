.class public final enum Lcom/android/settings_ex/lgesetting/Config/Config$Operator;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lgesetting/Config/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/lgesetting/Config/Config$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum ATT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum DCM:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum KDDI:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum KT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum LGT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum NOT_REGISTERED:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum OPEN:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum SKT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum TCL:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum TMO:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field public static final enum VZW:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field private static final stringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/lgesetting/Config/Config$Operator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "ATT"

    invoke-direct {v4, v5, v7}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->ATT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "VZW"

    invoke-direct {v4, v5, v8}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->VZW:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "TMO"

    invoke-direct {v4, v5, v9}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->TMO:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "SKT"

    invoke-direct {v4, v5, v10}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->SKT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "OPEN"

    invoke-direct {v4, v5, v11}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->OPEN:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "KT"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->KT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "LGT"

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->LGT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "DCM"

    const/4 v6, 0x7

    invoke-direct {v4, v5, v6}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->DCM:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "TCL"

    const/16 v6, 0x8

    invoke-direct {v4, v5, v6}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->TCL:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "KDDI"

    const/16 v6, 0x9

    invoke-direct {v4, v5, v6}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->KDDI:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    const-string v5, "NOT_REGISTERED"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->NOT_REGISTERED:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    .line 52
    const/16 v4, 0xb

    new-array v4, v4, [Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    sget-object v5, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->ATT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->VZW:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v5, v4, v8

    sget-object v5, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->TMO:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v5, v4, v9

    sget-object v5, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->SKT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->OPEN:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v5, v4, v11

    const/4 v5, 0x5

    sget-object v6, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->KT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->LGT:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->DCM:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->TCL:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->KDDI:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->NOT_REGISTERED:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->$VALUES:[Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->stringToEnum:Ljava/util/Map;

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->values()[Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    move-result-object v0

    .local v0, arr$:[Lcom/android/settings_ex/lgesetting/Config/Config$Operator;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, o:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;
    sget-object v4, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->stringToEnum:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #o:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;
    :cond_0
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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/lgesetting/Config/Config$Operator;
    .locals 1
    .parameter

    .prologue
    const-class v0, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/lgesetting/Config/Config$Operator;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->$VALUES:[Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    invoke-virtual {v0}, [Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    return-object v0
.end method
