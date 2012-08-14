.class Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$BlockEHRPDInternetIPv6Task;
.super Ljava/util/TimerTask;
.source "CdmaLteServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockEHRPDInternetIPv6Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    const-string v1, "BlockEHRPDInternetIPv6Task ongoing..."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method
