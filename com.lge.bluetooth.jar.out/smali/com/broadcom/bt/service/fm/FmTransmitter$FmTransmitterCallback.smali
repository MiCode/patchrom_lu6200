.class Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;
.super Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmTransmitterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitter;)V
    .locals 0
    .parameter

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitter;Lcom/broadcom/bt/service/fm/FmTransmitter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1208
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitter;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onBestChannelEvent(II[I[I)V
    .locals 1
    .parameter "status"
    .parameter "num_ch"
    .parameter "freq"
    .parameter "rssi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1250
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onBestChannelEvent(II[I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    :cond_0
    monitor-exit p0

    return-void

    .line 1250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onChannelStatusEvent(III)V
    .locals 1
    .parameter "status"
    .parameter "rssi"
    .parameter "channel_status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onChannelStatusEvent(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1259
    :cond_0
    monitor-exit p0

    return-void

    .line 1257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFmTransmitterDisabledEvent(I)V
    .locals 1
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onFmTransmitterDisabledEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    :cond_0
    monitor-exit p0

    return-void

    .line 1220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFmTransmitterEnabledEvent(I)V
    .locals 1
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onFmTransmitterEnabledEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    :cond_0
    monitor-exit p0

    return-void

    .line 1212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSetTxFrequencyEvent(II)V
    .locals 1
    .parameter "status"
    .parameter "frequency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onSetTxFrequencyEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    :cond_0
    monitor-exit p0

    return-void

    .line 1243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSetTxPowerEvent(IZ)V
    .locals 1
    .parameter "status"
    .parameter "power_on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onSetTxPowerEvent(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    :cond_0
    monitor-exit p0

    return-void

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStatusEvent(II)V
    .locals 1
    .parameter "type"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onStatusEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    :cond_0
    monitor-exit p0

    return-void

    .line 1228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
