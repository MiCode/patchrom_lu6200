.class Lcom/android/internal/telephony/gsm/UsimLibService$2;
.super Ljava/util/TimerTask;
.source "UsimLibService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/UsimLibService;->registerTimeoutTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimLibService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimLibService;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService$2;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService$2;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mHandler:Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$300(Lcom/android/internal/telephony/gsm/UsimLibService;)Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->sendEmptyMessage(I)Z

    .line 192
    return-void
.end method
