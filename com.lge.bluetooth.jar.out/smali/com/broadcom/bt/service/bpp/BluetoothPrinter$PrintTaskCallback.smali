.class Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;
.super Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintTaskCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)V
    .locals 0
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrinterBppDocComplete(JI)V
    .locals 2
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 1052
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1053
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterBppDocComplete(JI)V

    .line 1056
    :cond_0
    return-void
.end method

.method public onPrinterGetObject(JLjava/lang/String;)V
    .locals 2
    .parameter "jobId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 1061
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1062
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterGetObject(JLjava/lang/String;)V

    .line 1065
    :cond_0
    return-void
.end method

.method public onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V
    .locals 2
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 1070
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1071
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V

    .line 1074
    :cond_0
    return-void
.end method

.method public onPrinterPartialImage(JLjava/lang/String;)V
    .locals 2
    .parameter "jobId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 1079
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1080
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterPartialImage(JLjava/lang/String;)V

    .line 1083
    :cond_0
    return-void
.end method

.method public onPrinterProgress(JII)V
    .locals 2
    .parameter "jobId"
    .parameter "totalBytes"
    .parameter "processedBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 1088
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1089
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterProgress(JII)V

    .line 1092
    :cond_0
    return-void
.end method

.method public onPrinterTaskClosed(JI)V
    .locals 2
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1096
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 1097
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1098
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterTaskClosed(JI)V

    .line 1101
    :cond_0
    return-void
.end method

.method public onPrinterTaskOpen(JI)V
    .locals 2
    .parameter "jobId"
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 1106
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->onPrinterTaskOpen(JI)V

    .line 1110
    :cond_0
    return-void
.end method

.method public onPrinterThumbnail(J)V
    .locals 2
    .parameter "jobId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1113
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v0

    .line 1114
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;->onPrinterThumbnail(J)V

    .line 1118
    :cond_0
    return-void
.end method
