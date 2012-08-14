.class Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
.super Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$Result;
.source "IccPhonebookProviderBackendImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PBMResult"
.end annotation


# instance fields
.field mNativeRecord:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

.field mReturnCode:I

.field final synthetic this$1:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;II)V
    .locals 1
    .parameter
    .parameter "result"
    .parameter "index"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->this$1:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    .line 181
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$Result;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;I)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mNativeRecord:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    .line 182
    iput p2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mReturnCode:I

    .line 183
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)V
    .locals 1
    .parameter
    .parameter "record"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->this$1:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    .line 186
    iget v0, p2, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->index:I

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$Result;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;I)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mNativeRecord:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    .line 187
    iput-object p2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mNativeRecord:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    .line 188
    return-void
.end method


# virtual methods
.method getNativeRecord()Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mNativeRecord:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mReturnCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
