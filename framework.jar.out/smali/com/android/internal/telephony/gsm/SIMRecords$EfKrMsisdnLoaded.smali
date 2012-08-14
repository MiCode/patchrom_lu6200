.class Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfKrMsisdnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 3610
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3610
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3612
    const-string v0, "EF_MSISDN KR"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 3616
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 3618
    .local v0, data:[B
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_USIM] MSISDN-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    array-length v3, v0

    add-int/lit8 v3, v3, -0xe

    add-int/lit8 v3, v3, 0x2

    array-length v4, v0

    add-int/lit8 v4, v4, -0x3

    invoke-static {v0, v3, v4}, Lcom/android/internal/telephony/LGEIccUtils;->subarray([BII)[B

    move-result-object v3

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnNumber:[B
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$302(Lcom/android/internal/telephony/gsm/SIMRecords;[B)[B

    .line 3622
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnNumber:[B
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$300(Lcom/android/internal/telephony/gsm/SIMRecords;)[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 3624
    const-string v2, "GSM"

    const-string v3, "[LGE_USIM] msisdnNumber is Invalid "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    :goto_0
    return-void

    .line 3628
    :cond_0
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_USIM] MSISDN Number-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnNumber:[B
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$300(Lcom/android/internal/telephony/gsm/SIMRecords;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->sumNumber:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$402(Lcom/android/internal/telephony/gsm/SIMRecords;I)I

    .line 3631
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 3633
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnNumber:[B
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$300(Lcom/android/internal/telephony/gsm/SIMRecords;)[B

    move-result-object v3

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$412(Lcom/android/internal/telephony/gsm/SIMRecords;I)I

    .line 3631
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3636
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->sumNumber:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$400(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfKrMsisdnLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->sumNumber:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$400(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v2

    const/16 v3, 0x9f6

    if-ne v2, v3, :cond_3

    .line 3637
    :cond_2
    const/4 v2, 0x2

    sput v2, Lcom/android/internal/telephony/IccRecords;->mIsEmptyUsim:I

    .line 3642
    :goto_2
    const-string/jumbo v2, "gsm.sim.exception"

    sget v3, Lcom/android/internal/telephony/IccRecords;->mIsEmptyUsim:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3643
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_USIM] mIsEmptyUsim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/IccRecords;->mIsEmptyUsim:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3640
    :cond_3
    const/4 v2, 0x1

    sput v2, Lcom/android/internal/telephony/IccRecords;->mIsEmptyUsim:I

    goto :goto_2
.end method
