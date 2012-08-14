.class public final Lcom/android/internal/telephony/ModemInfoResponse;
.super Ljava/lang/Object;
.source "ModemInfoResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static addrString:Ljava/lang/String;

.field static i:I

.field static parts:[Ljava/lang/String;

.field private static response:Ljava/lang/Object;

.field static st:Ljava/util/StringTokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/internal/telephony/ModemInfoResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static convert_String_To_IntArray(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "object"
    .parameter "expr"

    .prologue
    .line 434
    sget-object v3, Lcom/android/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "object : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-nez p0, :cond_1

    .line 437
    const/4 v1, 0x0

    .line 446
    :cond_0
    return-object v1

    :cond_1
    move-object v2, p0

    .line 439
    check-cast v2, Ljava/lang/String;

    .line 441
    .local v2, target:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, parts:[Ljava/lang/String;
    array-length v3, v0

    new-array v1, v3, [I

    .line 443
    .local v1, retResponse:[I
    const/4 v3, 0x0

    sput v3, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    :goto_0
    sget v3, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 444
    sget v3, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    sget v4, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 443
    sget v3, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    goto :goto_0
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, id:I
    const/high16 v1, 0xff

    and-int/2addr v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL_REQUEST_GET_MODEM_INFO: unsupported record. Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :sswitch_0
    invoke-static {v0, p0}, Lcom/android/internal/telephony/ModemInfoResponse;->getCdmaCallInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    .line 56
    :sswitch_1
    invoke-static {v0, p0}, Lcom/android/internal/telephony/ModemInfoResponse;->getCdmaSsInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 58
    :sswitch_2
    invoke-static {v0, p0}, Lcom/android/internal/telephony/ModemInfoResponse;->getCdmaPhInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 60
    :sswitch_3
    invoke-static {v0, p0}, Lcom/android/internal/telephony/ModemInfoResponse;->getCdmaNvInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 64
    :sswitch_4
    invoke-static {v0, p0}, Lcom/android/internal/telephony/ModemInfoResponse;->getDbgScrInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 67
    :sswitch_5
    invoke-static {v0, p0}, Lcom/android/internal/telephony/ModemInfoResponse;->getDsInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 70
    :sswitch_6
    invoke-static {v0, p0}, Lcom/android/internal/telephony/ModemInfoResponse;->getWBaseInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x60000 -> :sswitch_6
        0xb0000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getCdmaCallInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "id"
    .parameter "p"

    .prologue
    .line 91
    packed-switch p0, :pswitch_data_0

    .line 109
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_CALL_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 100
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rocky :msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 106
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCdmaNvInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "id"
    .parameter "p"

    .prologue
    .line 259
    sparse-switch p0, :sswitch_data_0

    .line 274
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_NV_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 277
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 259
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x3c364 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCdmaPhInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "id"
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 168
    packed-switch p0, :pswitch_data_0

    .line 251
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_PH_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :pswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 212
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rocky :msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 226
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 232
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    .line 234
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 235
    sput v2, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    :goto_1
    sget v0, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    sget-object v1, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 236
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    sget v1, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    sget-object v2, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    sget v3, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 235
    sget v0, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    goto :goto_1

    .line 241
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 246
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x20000
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getCdmaSsInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "id"
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 117
    sparse-switch p0, :sswitch_data_0

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_SS_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :sswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 143
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rocky :msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 149
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 153
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 156
    sput v2, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    :goto_1
    sget v0, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    sget-object v1, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 157
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    sget v1, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    sget-object v2, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    sget v3, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 156
    sget v0, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    goto :goto_1

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x10001 -> :sswitch_0
        0x10002 -> :sswitch_0
        0x10003 -> :sswitch_0
        0x10004 -> :sswitch_0
        0x10005 -> :sswitch_0
        0x10006 -> :sswitch_1
        0x10007 -> :sswitch_1
        0x1000c -> :sswitch_2
        0x1000f -> :sswitch_0
        0x10016 -> :sswitch_1
        0x10017 -> :sswitch_1
        0x100ca -> :sswitch_2
        0x20047 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDbgScrInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "id"
    .parameter "p"

    .prologue
    .line 287
    packed-switch p0, :pswitch_data_0

    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_DBGSCR_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 329
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 317
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    .line 318
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    .line 319
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 320
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    :goto_0
    sget v0, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    sget-object v1, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 321
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    sget v1, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    sget-object v2, Lcom/android/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    sget v3, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 320
    sget v0, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/ModemInfoResponse;->i:I

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDsInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "id"
    .parameter "p"

    .prologue
    .line 334
    packed-switch p0, :pswitch_data_0

    .line 360
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_DBGSCR_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :pswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 363
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 355
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0xb0000
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getWBaseInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "id"
    .parameter "p"

    .prologue
    .line 368
    packed-switch p0, :pswitch_data_0

    .line 415
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_DBGSCR_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 418
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 409
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ModemInfoResponse;->convert_String_To_IntArray(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x60000
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 79
    sparse-switch p0, :sswitch_data_0

    .line 85
    const-string v0, "<unknown record>"

    :goto_0
    return-object v0

    .line 80
    :sswitch_0
    const-string v0, "RIL_C_CALL_INFO"

    goto :goto_0

    .line 81
    :sswitch_1
    const-string v0, "RIL_C_SS_INFO"

    goto :goto_0

    .line 82
    :sswitch_2
    const-string v0, "RIL_C_PH_INFO"

    goto :goto_0

    .line 83
    :sswitch_3
    const-string v0, "RIL_C_NV_INFO"

    goto :goto_0

    .line 84
    :sswitch_4
    const-string v0, "RIL_C_DBGSCR_INFO"

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method
