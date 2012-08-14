.class Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$Result;
.super Ljava/lang/Object;
.source "IccPhonebookProviderBackendImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Result"
.end annotation


# instance fields
.field protected mIndex:I

.field final synthetic this$1:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$Result;->this$1:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$Result;->mIndex:I

    .line 168
    return-void
.end method


# virtual methods
.method getIndex()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$Result;->mIndex:I

    return v0
.end method

.method isSuccess()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method
