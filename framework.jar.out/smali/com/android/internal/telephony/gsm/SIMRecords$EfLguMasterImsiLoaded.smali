.class Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;
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
    name = "EfLguMasterImsiLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 3647
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3649
    const-string v0, "EF_LGU_MASTER_IMSI"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 3653
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3654
    .local v0, data:[B
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v2, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mLgeIccUtils:Lcom/android/internal/telephony/LGEIccUtils;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$600(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/LGEIccUtils;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;-><init>(Lcom/android/internal/telephony/LGEIccUtils;[B)V

    #setter for: Lcom/android/internal/telephony/IccRecords;->mLguMasterImsi:Lcom/android/internal/telephony/LGEIccUtils$LguImsi;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$502(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/LGEIccUtils$LguImsi;)Lcom/android/internal/telephony/LGEIccUtils$LguImsi;

    .line 3655
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mLguMasterImsi:Lcom/android/internal/telephony/LGEIccUtils$LguImsi;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$800(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/LGEIccUtils$LguImsi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->getImsi()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/internal/telephony/IccRecords;->mMFImsi:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$702(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 3656
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const-string v2, "45006"

    #setter for: Lcom/android/internal/telephony/IccRecords;->mMncMcc:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$902(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 3657
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mMFImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1000(Lcom/android/internal/telephony/gsm/SIMRecords;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->setUiccType(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$200(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMFImsi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mMFImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1100(Lcom/android/internal/telephony/gsm/SIMRecords;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    mMncMcc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mMncMcc:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1200(Lcom/android/internal/telephony/gsm/SIMRecords;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    return-void
.end method
