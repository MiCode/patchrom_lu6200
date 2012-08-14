.class public Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;
.super Lcom/android/internal/telephony/IUsimInfoCallback$Stub;
.source "IccPhonebookProviderBackendImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "qctInfo"
.end annotation


# static fields
.field private static final PBM_FILE_TYPE_COMPARE_MASK:I = 0xf


# instance fields
.field private mAsyncCallSynchronizer:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSliceIndex:I

.field private mGlobalInfo:[Ljava/lang/Object;

.field private mRequestEf:I

.field private mSliceInfo:[[Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 566
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;

    invoke-direct {p0}, Lcom/android/internal/telephony/IUsimInfoCallback$Stub;-><init>()V

    .line 572
    iput v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    .line 573
    iput v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    .line 574
    new-instance v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mAsyncCallSynchronizer:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->read(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private dumpNativeInfo(Ljava/lang/String;Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V
    .locals 5
    .parameter "description"
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 859
    const-string v1, "IccPhonebookProvider"

    const-string v2, "<----------------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->device:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|file_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->file_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|max_num_length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->max_num_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|max_text_length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->max_text_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|num_of_free_ext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->num_of_free_ext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|num_of_tot_rec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->num_of_tot_rec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|num_of_used_rec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->num_of_used_rec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|RECORD_INFO_MAX_PB_SETS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|CONTENTS_FILE_DESCRIPTOR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|PARCELABLE_WRITE_RETURN_VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->records_in_pb_set:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 873
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "| records_in_pb_set["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->records_in_pb_set:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "| used_records_in_pb_set["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->used_records_in_pb_set:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    :cond_0
    const-string v1, "IccPhonebookProvider"

    const-string v2, "---------------------------------------------------->"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void
.end method

.method private handleResult(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 625
    .local v0, hasMoreRequest:Z
    iget v1, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->device:I

    packed-switch v1, :pswitch_data_0

    .line 656
    :goto_0
    :pswitch_0
    return v0

    .line 627
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->onAdn(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)Z

    move-result v0

    .line 628
    goto :goto_0

    .line 637
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->onAnr(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)Z

    move-result v0

    .line 638
    goto :goto_0

    .line 647
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->onEmail(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)Z

    move-result v0

    .line 648
    goto :goto_0

    .line 653
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->onGas(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)Z

    move-result v0

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
        :pswitch_4
    .end packed-switch
.end method

.method private onAdn(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)Z
    .locals 8
    .parameter "info"

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 662
    iget v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->status:I

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->records_in_pb_set:[I

    if-nez v3, :cond_1

    .line 663
    :cond_0
    const-string v2, "IccPhonebookProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdn:end with status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string/jumbo v2, "passed info is"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->dumpNativeInfo(Ljava/lang/String;Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V

    .line 702
    :goto_0
    return v1

    .line 668
    :cond_1
    iget v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->num_of_tot_rec:I

    if-nez v3, :cond_2

    .line 670
    const-string v2, "IccPhonebookProvider"

    const-string/jumbo v3, "not ready!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 674
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    .line 675
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 676
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->records_in_pb_set:[I

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 678
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v4, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 680
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v4, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 681
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v4, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 682
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const-string v4, "GSMAlpha"

    aput-object v4, v3, v2

    .line 683
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/4 v4, 0x2

    iget v5, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->max_text_length:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 684
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 685
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 686
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/4 v4, 0x7

    iget v5, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->num_of_free_ext:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 687
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v4, 0xa

    const-string v5, ""

    aput-object v5, v3, v4

    .line 688
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v4, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 689
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v4, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 691
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->records_in_pb_set:[I

    array-length v3, v3

    new-array v3, v3, [[Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    .line 693
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->records_in_pb_set:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 694
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v4, v3, v0

    .line 695
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->records_in_pb_set:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 698
    :cond_3
    iput v6, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    .line 700
    const-string/jumbo v1, "onAdn"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->dumpNativeInfo(Ljava/lang/String;Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V

    move v1, v2

    .line 702
    goto/16 :goto_0
.end method

.method private onAnr(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)Z
    .locals 9
    .parameter "info"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 708
    iget v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->status:I

    if-eqz v3, :cond_1

    .line 710
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAnr:end with status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string/jumbo v3, "passed info is"

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->dumpNativeInfo(Ljava/lang/String;Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V

    .line 713
    iput v8, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    .line 715
    iget v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->status:I

    if-ne v3, v6, :cond_0

    .line 755
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 715
    goto :goto_0

    .line 718
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    packed-switch v3, :pswitch_data_0

    .line 739
    :goto_1
    iget v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->file_type:I

    and-int/lit8 v0, v3, 0xf

    .line 740
    .local v0, anrType:I
    if-ne v0, v1, :cond_3

    .line 741
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    aget-object v2, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 749
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    aget-object v2, v2, v3

    iget v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->num_of_tot_rec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAnr["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->dumpNativeInfo(Ljava/lang/String;Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V

    .line 753
    iget v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    goto :goto_0

    .line 720
    .end local v0           #anrType:I
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    .line 721
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/4 v4, 0x4

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 722
    const/16 v3, 0x10

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    .line 724
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->records_in_pb_set:[I

    aget v3, v3, v2

    if-ne v3, v7, :cond_2

    .line 725
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v4, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_1

    .line 727
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v4, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_1

    .line 730
    :pswitch_1
    const/16 v3, 0x11

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto :goto_1

    .line 731
    :pswitch_2
    const/16 v3, 0x12

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto :goto_1

    .line 732
    :pswitch_3
    const/16 v3, 0x13

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto/16 :goto_1

    .line 733
    :pswitch_4
    const/16 v3, 0x14

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto/16 :goto_1

    .line 734
    :pswitch_5
    const/16 v3, 0x15

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto/16 :goto_1

    .line 735
    :pswitch_6
    const/16 v3, 0x16

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto/16 :goto_1

    .line 736
    :pswitch_7
    iput v8, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto/16 :goto_1

    .line 742
    .restart local v0       #anrType:I
    :cond_3
    if-ne v0, v6, :cond_4

    .line 743
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    aget-object v2, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    goto/16 :goto_2

    .line 744
    :cond_4
    if-ne v0, v7, :cond_5

    .line 745
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    aget-object v2, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    goto/16 :goto_2

    .line 747
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    aget-object v3, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    goto/16 :goto_2

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onEmail(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)Z
    .locals 9
    .parameter "info"

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x3

    .line 761
    iget v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->status:I

    if-eqz v3, :cond_1

    .line 762
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onEmail:end with status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string/jumbo v3, "passed info is"

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->dumpNativeInfo(Ljava/lang/String;Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V

    .line 766
    iput v8, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    .line 767
    iget v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->status:I

    if-ne v3, v7, :cond_0

    .line 802
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 767
    goto :goto_0

    .line 770
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    packed-switch v3, :pswitch_data_0

    .line 786
    :goto_1
    iget v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->file_type:I

    and-int/lit8 v0, v3, 0xf

    .line 787
    .local v0, emailType:I
    if-ne v0, v1, :cond_2

    .line 788
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    aget-object v2, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 796
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    aget-object v2, v2, v3

    const/4 v3, 0x4

    iget v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->num_of_tot_rec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEmail["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->dumpNativeInfo(Ljava/lang/String;Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V

    .line 800
    iget v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    goto :goto_0

    .line 772
    .end local v0           #emailType:I
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    .line 773
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/4 v4, 0x6

    iget v5, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->max_text_length:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 774
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/4 v4, 0x5

    const-string v5, "GSM7"

    aput-object v5, v3, v4

    .line 775
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto :goto_1

    .line 777
    :pswitch_1
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto :goto_1

    .line 778
    :pswitch_2
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto :goto_1

    .line 779
    :pswitch_3
    const/16 v3, 0xb

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto :goto_1

    .line 780
    :pswitch_4
    const/16 v3, 0xc

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto :goto_1

    .line 781
    :pswitch_5
    const/16 v3, 0xd

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto :goto_1

    .line 782
    :pswitch_6
    const/16 v3, 0xe

    iput v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto :goto_1

    .line 784
    :pswitch_7
    iput v8, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    goto :goto_1

    .line 789
    .restart local v0       #emailType:I
    :cond_2
    if-ne v0, v7, :cond_3

    .line 790
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    aget-object v2, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_2

    .line 791
    :cond_3
    if-ne v0, v6, :cond_4

    .line 792
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    aget-object v2, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    goto/16 :goto_2

    .line 794
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mCurrentSliceIndex:I

    aget-object v3, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    goto/16 :goto_2

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onGas(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 828
    const-string/jumbo v0, "onGas"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->dumpNativeInfo(Ljava/lang/String;Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V

    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v1, 0xb

    iget v2, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->max_text_length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v1, 0x9

    iget v2, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->num_of_tot_rec:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method private read(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"

    .prologue
    .line 581
    new-instance v3, Lcom/android/internal/telephony/UsimService;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/UsimService;-><init>(Landroid/content/Context;)V

    .line 582
    .local v3, service:Lcom/android/internal/telephony/UsimService;
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/UsimService;->registerCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 583
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    .line 586
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mAsyncCallSynchronizer:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v4}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 588
    iget v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mRequestEf:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UsimService;->PBMGetInfo(I)V

    .line 590
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mAsyncCallSynchronizer:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v2

    .line 594
    .local v2, result:Ljava/lang/Object;
    if-eqz v2, :cond_1

    check-cast v2, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;

    .end local v2           #result:Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->handleResult(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 599
    :cond_1
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/UsimService;->unregisterCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 601
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 602
    .local v0, cursor:Landroid/database/MatrixCursor;
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    if-nez v4, :cond_4

    .line 603
    :cond_2
    const-string v4, "IccPhonebookProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t load info: global-info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sliceInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1800()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 614
    :cond_3
    return-object v0

    .line 607
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mGlobalInfo:[Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 609
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 610
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 611
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mSliceInfo:[[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPBMDeleteCB(II)V
    .locals 3
    .parameter "retPbmResult"
    .parameter "deleteIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 850
    const-string v0, "IccPhonebookProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unplaned delete operation [result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deleteIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void
.end method

.method public onPBMInfoCB(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V
    .locals 1
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->mAsyncCallSynchronizer:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->notifyResult(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;Ljava/lang/Object;)V

    .line 845
    return-void
.end method

.method public onPBMReadCB(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)V
    .locals 3
    .parameter "records"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 853
    const-string v0, "IccPhonebookProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unplaned read operation [records="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method

.method public onPBMWriteCB(II)V
    .locals 3
    .parameter "retPbmResult"
    .parameter "writtenSimIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 847
    const-string v0, "IccPhonebookProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unplaned write operation [result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", writtenSimIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-void
.end method
