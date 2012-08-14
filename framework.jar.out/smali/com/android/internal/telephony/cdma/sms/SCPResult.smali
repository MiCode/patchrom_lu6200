.class public Lcom/android/internal/telephony/cdma/sms/SCPResult;
.super Ljava/lang/Object;
.source "SCPResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/SCPResult$ResultField;
    }
.end annotation


# static fields
.field public static final SCP_RESULT_ALREADY_OPT_IN:I = 0x3

.field public static final SCP_RESULT_ALREADY_OPT_OUT:I = 0x4

.field public static final SCP_RESULT_SUCCESS:I


# instance fields
.field private results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/sms/SCPResult$ResultField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public addResult(II)V
    .locals 1
    .parameter "category"
    .parameter "result"

    .prologue
    .line 47
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SCPResult$ResultField;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SCPResult$ResultField;-><init>()V

    .line 48
    .local v0, field:Lcom/android/internal/telephony/cdma/sms/SCPResult$ResultField;
    iput p1, v0, Lcom/android/internal/telephony/cdma/sms/SCPResult$ResultField;->category:I

    .line 49
    iput p2, v0, Lcom/android/internal/telephony/cdma/sms/SCPResult$ResultField;->result:I

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/sms/SCPResult;->addResult(Lcom/android/internal/telephony/cdma/sms/SCPResult$ResultField;)V

    .line 51
    return-void
.end method

.method public addResult(Lcom/android/internal/telephony/cdma/sms/SCPResult$ResultField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPResult;->results:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPResult;->results:Ljava/util/ArrayList;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public addResults([I[I)V
    .locals 4
    .parameter "categories"
    .parameter "results"

    .prologue
    .line 54
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 56
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, ind:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 57
    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/sms/SCPResult;->addResult(II)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public getNumResults()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/sms/SCPResult$ResultField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPResult;->results:Ljava/util/ArrayList;

    return-object v0
.end method
