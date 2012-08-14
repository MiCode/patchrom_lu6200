.class final Lcom/android/internal/telephony/PopupUtils$1;
.super Landroid/os/Handler;
.source "PopupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PopupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTimeoutHandler MSG_ID_TIMEOUT networkDialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/PopupUtils;->access$000()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/PopupUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/PopupUtils;->access$100(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/PopupUtils;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/android/internal/telephony/PopupUtils;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/PopupUtils;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 68
    #calls: Lcom/android/internal/telephony/PopupUtils;->postDismissDialog()V
    invoke-static {}, Lcom/android/internal/telephony/PopupUtils;->access$200()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
