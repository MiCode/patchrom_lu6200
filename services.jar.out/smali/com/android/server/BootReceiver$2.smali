.class Lcom/android/server/BootReceiver$2;
.super Landroid/os/Handler;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 94
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 99
    .local v2, data:Ljava/util/HashMap;
    const-string v3, "crashinfo"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, crashinfo:Ljava/lang/String;
    new-instance v1, Lcom/android/server/BlueProcessCrashDialog;

    iget-object v3, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    iget-object v3, v3, Lcom/android/server/BootReceiver;->mContext:Landroid/content/Context;

    const/16 v4, 0x66

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/BlueProcessCrashDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 101
    .local v1, d:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 109
    .end local v0           #crashinfo:Ljava/lang/String;
    .end local v1           #d:Landroid/app/Dialog;
    .end local v2           #data:Ljava/util/HashMap;
    :pswitch_1
    const-string v0, "Android System Server is crashed"

    .line 110
    .restart local v0       #crashinfo:Ljava/lang/String;
    new-instance v1, Lcom/android/server/BlueProcessCrashDialog;

    iget-object v3, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    iget-object v3, v3, Lcom/android/server/BootReceiver;->mContext:Landroid/content/Context;

    const/16 v4, 0x67

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/BlueProcessCrashDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 111
    .restart local v1       #d:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
