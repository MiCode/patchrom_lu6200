.class Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;
.super Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;
.source "BluetoothFTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/BluetoothFTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FTPCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "remoteDeviceName"
    .parameter "opCode"
    .parameter "remoteAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 894
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 895
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 896
    invoke-interface/range {v0 .. v5}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V

    .line 900
    :cond_0
    return-void
.end method

.method public onFtpServerAuthen(Ljava/lang/String;BZ)V
    .locals 0
    .parameter "userId"
    .parameter "useridLength"
    .parameter "useridRequired"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 909
    return-void
.end method

.method public onFtpServerClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 912
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 913
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 914
    invoke-interface {v0}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerClosed()V

    .line 916
    :cond_0
    return-void
.end method

.method public onFtpServerDelCompleted(Ljava/lang/String;B)V
    .locals 2
    .parameter "fileName"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 920
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 921
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 922
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerDelCompleted(Ljava/lang/String;B)V

    .line 925
    :cond_0
    return-void
.end method

.method public onFtpServerEnabled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 928
    return-void
.end method

.method public onFtpServerFileTransferInProgress(II)V
    .locals 2
    .parameter "fileSize"
    .parameter "numOfByteSinceLastReported"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 932
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 933
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 934
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerFileTransferInProgress(II)V

    .line 937
    :cond_0
    return-void
.end method

.method public onFtpServerGetCompleted(Ljava/lang/String;B)V
    .locals 2
    .parameter "fileName"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 941
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 942
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 943
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerGetCompleted(Ljava/lang/String;B)V

    .line 945
    :cond_0
    return-void
.end method

.method public onFtpServerOpened(Ljava/lang/String;)V
    .locals 2
    .parameter "remoteAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 948
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 949
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 950
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerOpened(Ljava/lang/String;)V

    .line 952
    :cond_0
    return-void
.end method

.method public onFtpServerPutCompleted(Ljava/lang/String;B)V
    .locals 2
    .parameter "fileName"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 956
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 957
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 958
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerPutCompleted(Ljava/lang/String;B)V

    .line 960
    :cond_0
    return-void
.end method
