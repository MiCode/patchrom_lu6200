.class public Lcom/verizon/phone/SimRecords;
.super Ljava/lang/Object;
.source "SimRecords.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SimRecords"

.field private static sInstance:Lcom/verizon/phone/SimRecords;


# instance fields
.field public final TYPE_EUIMID:I

.field public final TYPE_IMEI:I

.field public final TYPE_MEID:I

.field public final TYPE_UPDATE:I

.field protected mEsn:Ljava/lang/String;

.field protected mImei:Ljava/lang/String;

.field protected mImeiSv:Ljava/lang/String;

.field protected mMeid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/verizon/phone/SimRecords;

    invoke-direct {v0}, Lcom/verizon/phone/SimRecords;-><init>()V

    sput-object v0, Lcom/verizon/phone/SimRecords;->sInstance:Lcom/verizon/phone/SimRecords;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/verizon/phone/SimRecords;->TYPE_UPDATE:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/verizon/phone/SimRecords;->TYPE_MEID:I

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/verizon/phone/SimRecords;->TYPE_IMEI:I

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/verizon/phone/SimRecords;->TYPE_EUIMID:I

    return-void
.end method

.method public static getDefault()Lcom/verizon/phone/SimRecords;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/verizon/phone/SimRecords;->sInstance:Lcom/verizon/phone/SimRecords;

    return-object v0
.end method


# virtual methods
.method public getDeviceId(I)Ljava/lang/String;
    .locals 7
    .parameter "type"

    .prologue
    const/16 v6, 0xe

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, mDeviceId:Ljava/lang/String;
    const-string/jumbo v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, prop:Ljava/lang/String;
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 43
    .local v0, isSIMReady:Z
    const-string v3, "SimRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mImei = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/verizon/phone/SimRecords;->mImei:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   mImeiSv = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/verizon/phone/SimRecords;->mImeiSv:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   mEsn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/verizon/phone/SimRecords;->mEsn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   mMeid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/verizon/phone/SimRecords;->mMeid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 61
    const/4 v1, 0x0

    .line 64
    :goto_0
    const-string v3, "SimRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v1

    .line 48
    :pswitch_0
    iget-object v1, p0, Lcom/verizon/phone/SimRecords;->mImei:Ljava/lang/String;

    .line 49
    goto :goto_0

    .line 51
    :pswitch_1
    if-nez v0, :cond_0

    .line 52
    const/4 v1, 0x0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/verizon/phone/SimRecords;->mImei:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    iget-object v3, p0, Lcom/verizon/phone/SimRecords;->mImei:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/verizon/phone/SimRecords;->mMeid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    iget-object v1, p0, Lcom/verizon/phone/SimRecords;->mMeid:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x0

    .line 58
    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDeviceId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "imei"
    .parameter "imeiSv"
    .parameter "esn"
    .parameter "meid"

    .prologue
    .line 33
    iput-object p2, p0, Lcom/verizon/phone/SimRecords;->mImei:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/verizon/phone/SimRecords;->mImeiSv:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/verizon/phone/SimRecords;->mEsn:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/verizon/phone/SimRecords;->mMeid:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1}, Lcom/verizon/phone/SimRecords;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
