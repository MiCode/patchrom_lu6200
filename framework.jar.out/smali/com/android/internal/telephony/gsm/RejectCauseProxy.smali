.class public Lcom/android/internal/telephony/gsm/RejectCauseProxy;
.super Ljava/lang/Object;
.source "RejectCauseProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/RejectCause;


# instance fields
.field private mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/RejectCause;)V
    .locals 1
    .parameter "rc"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/RejectCauseProxy;->mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    .line 17
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/RejectCauseProxy;->mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    .line 18
    return-void
.end method


# virtual methods
.method public bManualSelectionAvailable()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/RejectCauseProxy;->mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/RejectCauseProxy;->mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/RejectCause;->bManualSelectionAvailable()Z

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearRejectCause(II)Z
    .locals 2
    .parameter "clear_mm"
    .parameter "clear_gmm"

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RejectCauseProxy;->mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RejectCauseProxy;->mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/gsm/RejectCause;->clearRejectCause(II)Z

    move-result v0

    .line 41
    :cond_0
    return v0
.end method

.method public handleServiceStatusResult(Landroid/os/AsyncResult;)I
    .locals 2
    .parameter "ar"

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, result:I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RejectCauseProxy;->mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RejectCauseProxy;->mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/gsm/RejectCause;->handleServiceStatusResult(Landroid/os/AsyncResult;)I

    move-result v0

    .line 23
    :cond_0
    return v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/RejectCauseProxy;->mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/RejectCauseProxy;->mRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/RejectCause;->initialize()V

    .line 28
    :cond_0
    return-void
.end method
