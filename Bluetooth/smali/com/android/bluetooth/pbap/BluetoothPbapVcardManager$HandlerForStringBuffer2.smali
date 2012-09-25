.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"

# interfaces
.implements Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerForStringBuffer2"
.end annotation


# instance fields
.field private maxPacketSize:I

.field private operation:Ljavax/obex/Operation;

.field private outputStream:Ljava/io/OutputStream;

.field private phoneOwnVCard:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "op"
    .parameter "ownerVCard"

    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->phoneOwnVCard:Ljava/lang/String;

    .line 994
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->operation:Ljavax/obex/Operation;

    .line 995
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->operation:Ljavax/obex/Operation;

    invoke-interface {v0}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->maxPacketSize:I

    .line 996
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxPacketSize() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->maxPacketSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-eqz p3, :cond_0

    .line 998
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->phoneOwnVCard:Ljava/lang/String;

    .line 999
    const-string v0, "BluetoothPbapVcardManager"

    const-string v1, "phone own number vcard:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const-string v0, "BluetoothPbapVcardManager"

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->phoneOwnVCard:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    return-void
.end method


# virtual methods
.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 12
    .parameter "vcard"

    .prologue
    const/4 v7, 0x0

    .line 1025
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1026
    .local v5, vcardLen:I
    const-string v8, "BluetoothPbapVcardManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The length of this vcard is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1030
    .local v6, vcardStringLen:I
    const-string v8, "BluetoothPbapVcardManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The length of this vcardResults is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->maxPacketSize:I

    if-lt v6, v8, :cond_1

    .line 1033
    const-wide/16 v3, 0x0

    .line 1034
    .local v3, timestamp:J
    const/4 v1, 0x0

    .line 1038
    .local v1, position:I
    :goto_0
    sget-boolean v8, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->maxPacketSize:I

    sub-int v8, v6, v8

    if-ge v1, v8, :cond_0

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1041
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->maxPacketSize:I

    add-int/2addr v9, v1

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1044
    .local v2, subStr:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->maxPacketSize:I

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    const-string v8, "BluetoothPbapVcardManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending vcard String "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->maxPacketSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->maxPacketSize:I

    add-int/2addr v1, v8

    .line 1055
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual {v8, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->BtUiSendLogData(Ljava/lang/String;)V

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, e:Ljava/io/IOException;
    const-string v8, "BluetoothPbapVcardManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "write outputstrem failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #position:I
    .end local v2           #subStr:Ljava/lang/String;
    .end local v3           #timestamp:J
    :goto_1
    return v7

    .line 1058
    .restart local v1       #position:I
    .restart local v3       #timestamp:J
    :cond_0
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1060
    .end local v1           #position:I
    .end local v3           #timestamp:J
    :cond_1
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->operation:Ljavax/obex/Operation;

    invoke-interface {v1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->outputStream:Ljava/io/OutputStream;

    .line 1007
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #setter for: Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;
    invoke-static {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$002(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1008
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->phoneOwnVCard:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->phoneOwnVCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->phoneOwnVCard:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1013
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->phoneOwnVCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->BtUiSendLogData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :cond_1
    const-string v1, "BluetoothPbapVcardManager"

    const-string v2, "openOutputStream() ok."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open outputstrem failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 6

    .prologue
    .line 1065
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, lastStr:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :goto_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v3, "Last packet sent out, sending process complete!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->outputStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;->operation:Ljavax/obex/Operation;

    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1074
    const-string v2, "BluetoothPbapVcardManager"

    const-string v3, "CloseStream failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :goto_1
    return-void

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write outputstrem failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1076
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v3, "CloseStream ok!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
