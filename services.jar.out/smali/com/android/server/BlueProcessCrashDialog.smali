.class Lcom/android/server/BlueProcessCrashDialog;
.super Landroid/app/AlertDialog;
.source "BlueProcessCrashDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field static final FRANDRO_ERR_HANDLER_ANDROID_CRASH_MSG:I = 0x67

.field static final FRANDRO_ERR_HANDLER_PROCESS_CRASH_MSG:I = 0x66

.field static final START_ERROR_HANDLER:I = 0x5

.field static final START_TIMEOUT:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "BlueProcessCrashDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "crashInfo"
    .parameter "CRASH_MSG"

    .prologue
    const/high16 v3, 0x2

    const/4 v5, 0x0

    .line 59
    const v1, 0x10302f7

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 114
    new-instance v1, Lcom/android/server/BlueProcessCrashDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/BlueProcessCrashDialog$1;-><init>(Lcom/android/server/BlueProcessCrashDialog;)V

    iput-object v1, p0, Lcom/android/server/BlueProcessCrashDialog;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-virtual {p0}, Lcom/android/server/BlueProcessCrashDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/BlueProcessCrashDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/BlueProcessCrashDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "Error Dialog"

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    const v1, 0x1080027

    invoke-virtual {p0, v1}, Lcom/android/server/BlueProcessCrashDialog;->setIcon(I)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x66

    if-ne p3, v1, :cond_1

    .line 71
    const-string v1, "BlueProcessCrashDialog"

    const-string v2, "[BLUE_ERROR_HANDLER] : Process Crash"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Blue Error Handler V1.2]\n************************\n A Process was crashed !!\n Debugging File for this :\n /data/dontpanic/process_crash_report.txt\n************************\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/BlueProcessCrashDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/server/BlueProcessCrashDialog;->setCancelable(Z)V

    .line 95
    const/4 v1, -0x1

    const v2, 0x10403c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BlueProcessCrashDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/BlueProcessCrashDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 100
    const v1, 0x10403bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/BlueProcessCrashDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/BlueProcessCrashDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 104
    iget-object v1, p0, Lcom/android/server/BlueProcessCrashDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/BlueProcessCrashDialog;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 109
    iget-object v1, p0, Lcom/android/server/BlueProcessCrashDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/BlueProcessCrashDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 112
    return-void

    .line 80
    :cond_1
    const/16 v1, 0x67

    if-ne p3, v1, :cond_0

    .line 81
    const-string v1, "[Blue Error Handler V1.2]\n************************\nSystem Server was crashed !!\nThe Phone has been rebooted.\nDebugging File for this :\n/data/dontpanic/android_crash_report.txt\n************************"

    invoke-virtual {p0, v1}, Lcom/android/server/BlueProcessCrashDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
