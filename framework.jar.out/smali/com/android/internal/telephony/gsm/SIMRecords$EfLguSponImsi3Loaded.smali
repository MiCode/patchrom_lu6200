.class Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;
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
    name = "EfLguSponImsi3Loaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 3692
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3694
    const-string v0, "EF_LGU_SPON_IMSI3"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 3698
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3699
    .local v0, data:[B
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v2, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mLgeIccUtils:Lcom/android/internal/telephony/LGEIccUtils;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$3200(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/LGEIccUtils;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;-><init>(Lcom/android/internal/telephony/LGEIccUtils;[B)V

    #setter for: Lcom/android/internal/telephony/IccRecords;->mLguSponImsi3:Lcom/android/internal/telephony/LGEIccUtils$LguImsi;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$3102(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/LGEIccUtils$LguImsi;)Lcom/android/internal/telephony/LGEIccUtils$LguImsi;

    .line 3700
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mLguSponImsi3:Lcom/android/internal/telephony/LGEIccUtils$LguImsi;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$3400(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/LGEIccUtils$LguImsi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->getImsi()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/internal/telephony/IccRecords;->mSponImsi3:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$3302(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 3701
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSponImsi3 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mSponImsi3:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$3500(Lcom/android/internal/telephony/gsm/SIMRecords;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->imsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$3900(Lcom/android/internal/telephony/gsm/SIMRecords;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mncLength:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$3800(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mSponImsi3:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$3700(Lcom/android/internal/telephony/gsm/SIMRecords;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguSponImsi3Loaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mncLength:I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$3600(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3703
    const/4 v1, 0x4

    sput v1, Lcom/android/internal/telephony/IccRecords;->mIsSponIMSI:I

    .line 3704
    :cond_0
    return-void
.end method
