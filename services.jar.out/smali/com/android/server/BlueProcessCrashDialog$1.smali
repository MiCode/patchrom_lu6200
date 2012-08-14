.class Lcom/android/server/BlueProcessCrashDialog$1;
.super Landroid/os/Handler;
.source "BlueProcessCrashDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BlueProcessCrashDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BlueProcessCrashDialog;


# direct methods
.method constructor <init>(Lcom/android/server/BlueProcessCrashDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/BlueProcessCrashDialog$1;->this$0:Lcom/android/server/BlueProcessCrashDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 116
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 120
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/BlueProcessCrashDialog$1;->this$0:Lcom/android/server/BlueProcessCrashDialog;

    invoke-virtual {v2}, Lcom/android/server/BlueProcessCrashDialog;->dismiss()V

    goto :goto_0

    .line 126
    :sswitch_1
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 127
    .local v1, exec:Ljava/lang/ProcessBuilder;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/blue_error_report"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "-p"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
