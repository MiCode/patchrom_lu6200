.class public Lcom/android/internal/telephony/LGEIccUtils$LguImsi;
.super Ljava/lang/Object;
.source "LGEIccUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGEIccUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LguImsi"
.end annotation


# static fields
.field static final LGUIMSI_ALPHAID_LENGTH:I = 0x14

.field static final LGUIMSI_IMSI_LENGTH:I = 0x9

.field static final LGUIMSI_LENGOFALPHAID_LENGTH:I = 0x1

.field static final LGUIMSI_MAX_LENGTH:I = 0x23f

.field static final LGUIMSI_OPLMNLIST_LENGTH:I = 0x1f4

.field static final LGUIMSI_PRIORITY_LENGTH:I = 0x1

.field static final LGUIMSI_SMSP_LENGTH:I = 0x2c


# instance fields
.field debugFlag:Z

.field public imsi:Ljava/lang/String;

.field public lengthOfAlphaId:I

.field public priority:I

.field public rawAlphaId:[B

.field public rawOplmnList:[B

.field public rawSmsP:[B

.field final synthetic this$0:Lcom/android/internal/telephony/LGEIccUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGEIccUtils;[B)V
    .locals 6
    .parameter
    .parameter "data"

    .prologue
    const/16 v5, 0x1f4

    const/16 v4, 0x2c

    const/16 v3, 0x14

    .line 644
    iput-object p1, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->this$0:Lcom/android/internal/telephony/LGEIccUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 629
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->debugFlag:Z

    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, offset:I
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawOplmnList:[B

    .line 647
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawSmsP:[B

    .line 648
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawAlphaId:[B

    .line 650
    :try_start_0
    aget-byte v2, p2, v1

    iput v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->priority:I

    .line 651
    add-int/lit8 v1, v1, 0x1

    .line 652
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->debugFlag:Z

    if-eqz v2, :cond_0

    const-string v2, "LGEIccUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LguImsi priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->priority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    const/16 v2, 0x9

    invoke-static {p2, v1, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->imsi:Ljava/lang/String;

    .line 654
    add-int/lit8 v1, v1, 0x9

    .line 655
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->debugFlag:Z

    if-eqz v2, :cond_1

    const-string v2, "LGEIccUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LguImsi imsi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawOplmnList:[B

    const/4 v3, 0x0

    const/16 v4, 0x1f4

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    add-int/lit16 v1, v1, 0x1f4

    .line 658
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->debugFlag:Z

    if-eqz v2, :cond_2

    const-string v2, "LGEIccUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LguImsi rawOplmnList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawOplmnList:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawSmsP:[B

    const/4 v3, 0x0

    const/16 v4, 0x2c

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    add-int/lit8 v1, v1, 0x2c

    .line 661
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->debugFlag:Z

    if-eqz v2, :cond_3

    const-string v2, "LGEIccUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LguImsi rawSmsP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawSmsP:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_3
    aget-byte v2, p2, v1

    iput v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->lengthOfAlphaId:I

    .line 663
    add-int/lit8 v1, v1, 0x1

    .line 664
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->debugFlag:Z

    if-eqz v2, :cond_4

    const-string v2, "LGEIccUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LguImsi lengthOfAlphaId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->lengthOfAlphaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawAlphaId:[B

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    add-int/lit8 v1, v1, 0x14

    .line 667
    iget-boolean v2, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->debugFlag:Z

    if-eqz v2, :cond_5

    const-string v2, "LGEIccUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LguImsi rawAlphaId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawAlphaId:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_5
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "LGEIccUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LguImsi Exception occur"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthOfAlphaId()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->lengthOfAlphaId:I

    return v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->getMccMnc(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMccMnc(I)Ljava/lang/String;
    .locals 3
    .parameter "mncLen"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->imsi:Ljava/lang/String;

    const/4 v1, 0x3

    add-int/lit8 v2, p1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->priority:I

    return v0
.end method

.method public getRawAlphaId()[B
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawAlphaId:[B

    return-object v0
.end method

.method public getRawOplmnList()[B
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawOplmnList:[B

    return-object v0
.end method

.method public getRawSmsP()[B
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/LGEIccUtils$LguImsi;->rawSmsP:[B

    return-object v0
.end method
