.class Lcom/android/internal/telephony/gsm/SIMRecords$EfSktImsiPLoaded;
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
    name = "EfSktImsiPLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 3596
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfSktImsiPLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3596
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords$EfSktImsiPLoaded;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3598
    const-string v0, "EF_IMSI_P"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 3602
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3603
    .local v0, data:[B
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfSktImsiPLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->imsip:Ljava/lang/String;

    .line 3604
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfSktImsiPLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v2, 0x0

    const-string/jumbo v3, "skt"

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->setUiccType(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$200(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 3605
    const-string v1, "GSM"

    const-string v2, "[LGE_USIM] mUiccType : SKT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSIP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfSktImsiPLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/SIMRecords;->imsip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    return-void
.end method
