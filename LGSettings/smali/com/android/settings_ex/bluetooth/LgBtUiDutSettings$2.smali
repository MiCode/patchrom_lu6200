.class Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$2;
.super Landroid/os/Handler;
.source "LgBtUiDutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit v1

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->onEnterDUTMode()V
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$200(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
