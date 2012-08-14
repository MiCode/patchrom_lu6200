.class Lcom/android/internal/telephony/cdma/RuimRecords$EfLguMasterImsiLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfLguMasterImsiLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/RuimRecords$EfLguMasterImsiLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    const-string v0, "EF_LGU_MASTER_IMSI"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 478
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 479
    .local v0, data:[B
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v2, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mLgeIccUtils:Lcom/android/internal/telephony/LGEIccUtils;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1700(Lcom/android/internal/telephony/cdma/RuimRecords;)Lcom/android/internal/telephony/LGEIccUtils;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;-><init>(Lcom/android/internal/telephony/LGEIccUtils;[B)V

    #setter for: Lcom/android/internal/telephony/IccRecords;->mLguMasterImsi:Lcom/android/internal/telephony/LGEIccUtils$LguImsi;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1602(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/LGEIccUtils$LguImsi;)Lcom/android/internal/telephony/LGEIccUtils$LguImsi;

    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mLguMasterImsi:Lcom/android/internal/telephony/LGEIccUtils$LguImsi;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1900(Lcom/android/internal/telephony/cdma/RuimRecords;)Lcom/android/internal/telephony/LGEIccUtils$LguImsi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->getImsi()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/internal/telephony/IccRecords;->mMFImsi:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1802(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const-string v2, "45006"

    #setter for: Lcom/android/internal/telephony/IccRecords;->mMncMcc:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2002(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMFImsi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mMFImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2100(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    mMncMcc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfLguMasterImsiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mMncMcc:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2200(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method
