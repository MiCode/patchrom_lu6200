.class Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;
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
    name = "EfCsimDualMdnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    const-string v0, "EF_CSIM_MDN"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/4 v6, 0x1

    .line 455
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 456
    .local v0, data:[B
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSIM_MDN Record2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 458
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    and-int/lit8 v1, v3, 0xf

    .line 459
    .local v1, mdnDigitsNum:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-static {v0, v6, v1}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdToString([BII)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mDualMdn:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1302(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSIM MDN Record2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mDualMdn:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1300(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 462
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mDualMdn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1300(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mDualMdn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1300(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "000000000000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const-string v4, "Write Dual Number to DB"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 464
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 465
    .local v2, values:Landroid/content/ContentValues;
    const-string/jumbo v3, "value_str"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mDualMdn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1300(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string/jumbo v3, "value_int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimDualMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1500(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1400()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "name=\'another_dual_number\'"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    .end local v1           #mdnDigitsNum:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
