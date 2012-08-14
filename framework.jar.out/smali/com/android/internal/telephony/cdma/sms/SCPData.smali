.class public Lcom/android/internal/telephony/cdma/sms/SCPData;
.super Ljava/lang/Object;
.source "SCPData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;
    }
.end annotation


# static fields
.field public static final ALERT_OP_DEFAULT:I = 0x1

.field public static final ALERT_OP_HIGH_ONCE:I = 0xa

.field public static final ALERT_OP_HIGH_RPT:I = 0xb

.field public static final ALERT_OP_LOW_ONCE:I = 0x6

.field public static final ALERT_OP_LOW_RPT:I = 0x7

.field public static final ALERT_OP_MED_ONCE:I = 0x8

.field public static final ALERT_OP_MED_RPT:I = 0x9

.field public static final ALERT_OP_NO_ALERT:I = 0x0

.field public static final ALERT_OP_VIB_ONCE:I = 0x2

.field public static final ALERT_OP_VIB_RPT:I = 0x3

.field public static final ALERT_OP_VIS_ONCE:I = 0x4

.field public static final ALERT_OP_VIS_RPT:I = 0x5

.field public static final OP_CODE_ADD:I = 0x1

.field public static final OP_CODE_CLR_ALL:I = 0x2

.field public static final OP_CODE_DEL:I = 0x0

.field public static final SCP_CAT_AMBER:I = 0x1003

.field public static final SCP_CAT_EXTREME:I = 0x1001

.field public static final SCP_CAT_PRESIDENTIAL:I = 0x1000

.field public static final SCP_CAT_SEVERE:I = 0x1002

.field public static final SCP_CAT_TEST:I = 0x1004


# instance fields
.field encoding:I

.field programs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public debugPrintField(I)V
    .locals 4
    .parameter "ind"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const-string/jumbo v1, "john.seo"

    const-string/jumbo v2, "no program data available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 67
    const-string/jumbo v1, "john.seo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "out of boundary index of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;

    .line 73
    .local v0, field:Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;
    const-string/jumbo v1, "john.seo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[field] opCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;->opCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string/jumbo v1, "john.seo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[field] category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;->category:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCategory(I)I
    .locals 5
    .parameter "ind"

    .prologue
    const/4 v1, -0x1

    .line 94
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 95
    const-string/jumbo v2, "john.seo"

    const-string/jumbo v3, "no program data available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return v1

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 100
    const-string/jumbo v2, "john.seo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "out of boundary index of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;

    .line 106
    .local v0, field:Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;->category:I

    goto :goto_0
.end method

.method public getOpCode(I)I
    .locals 5
    .parameter "ind"

    .prologue
    const/4 v1, -0x1

    .line 78
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const-string/jumbo v2, "john.seo"

    const-string/jumbo v3, "no program data available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return v1

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 84
    const-string/jumbo v2, "john.seo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "out of boundary index of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;

    .line 90
    .local v0, field:Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;->opCode:I

    goto :goto_0
.end method

.method public getPrograms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPData;->programs:Ljava/util/ArrayList;

    return-object v0
.end method
