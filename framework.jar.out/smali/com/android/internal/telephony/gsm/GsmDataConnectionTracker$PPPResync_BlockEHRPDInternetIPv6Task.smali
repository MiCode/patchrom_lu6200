.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$PPPResync_BlockEHRPDInternetIPv6Task;
.super Ljava/util/TimerTask;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PPPResync_BlockEHRPDInternetIPv6Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v1, "PPPResync_BlockEHRPDInternetIPv6Task ongoing..."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$PPPResync_BlockEHRPDInternetIPv6Task;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const v2, 0x42030

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method
