.class Lcom/android/server/am/BlueErrorDialog$1;
.super Landroid/os/Handler;
.source "BlueErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BlueErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BlueErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/BlueErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/am/BlueErrorDialog$1;->this$0:Lcom/android/server/am/BlueErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/android/server/am/BlueErrorDialog$1;->this$0:Lcom/android/server/am/BlueErrorDialog;

    #getter for: Lcom/android/server/am/BlueErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/BlueErrorDialog;->access$000(Lcom/android/server/am/BlueErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-enter v3

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BlueErrorDialog$1;->this$0:Lcom/android/server/am/BlueErrorDialog;

    #getter for: Lcom/android/server/am/BlueErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/BlueErrorDialog;->access$000(Lcom/android/server/am/BlueErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/BlueErrorDialog$1;->this$0:Lcom/android/server/am/BlueErrorDialog;

    #getter for: Lcom/android/server/am/BlueErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/BlueErrorDialog;->access$000(Lcom/android/server/am/BlueErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/BlueErrorDialog$1;->this$0:Lcom/android/server/am/BlueErrorDialog;

    if-ne v2, v4, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/server/am/BlueErrorDialog$1;->this$0:Lcom/android/server/am/BlueErrorDialog;

    #getter for: Lcom/android/server/am/BlueErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/BlueErrorDialog;->access$000(Lcom/android/server/am/BlueErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 115
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 115
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 118
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/am/BlueErrorDialog$1;->this$0:Lcom/android/server/am/BlueErrorDialog;

    #getter for: Lcom/android/server/am/BlueErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/BlueErrorDialog;->access$100(Lcom/android/server/am/BlueErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 122
    iget-object v2, p0, Lcom/android/server/am/BlueErrorDialog$1;->this$0:Lcom/android/server/am/BlueErrorDialog;

    invoke-virtual {v2}, Lcom/android/server/am/BlueErrorDialog;->dismiss()V

    goto :goto_0

    .line 127
    :sswitch_1
    :try_start_2
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 128
    .local v1, exec:Ljava/lang/ProcessBuilder;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/blue_error_report"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "-s"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ">"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "/data/dontpanic/android_sorry_report.txt"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    .line 129
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 130
    .end local v1           #exec:Ljava/lang/ProcessBuilder;
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
