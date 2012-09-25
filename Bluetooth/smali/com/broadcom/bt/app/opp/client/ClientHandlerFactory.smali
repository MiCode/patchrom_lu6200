.class public Lcom/broadcom/bt/app/opp/client/ClientHandlerFactory;
.super Ljava/lang/Object;
.source "ClientHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHandler(Lcom/broadcom/bt/app/opp/client/OPPClientService;Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    .locals 6
    .parameter "svc"
    .parameter "request"

    .prologue
    .line 47
    iget v2, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 48
    .local v2, requestType:I
    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 49
    .local v1, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 51
    .local v0, h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    const-string v3, "ClientHandlerfactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request\'s FileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v3, 0x1

    if-ne v3, v2, :cond_b

    .line 54
    const-string v3, "text/x-vcard"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 56
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/client/ClientHandlerFactory;->isFilePush(Lcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    new-instance v0, Lcom/broadcom/bt/app/opp/client/PushClientHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;-><init>()V

    .line 104
    .restart local v0       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0, p0, p1}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->init(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 107
    :cond_1
    return-object v0

    .line 60
    :cond_2
    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    const-string v4, "content://com.broadcom.bt.app.opp/groups"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    sget-object v4, Lcom/broadcom/bt/app/opp/data/Constants;->GROUP_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 64
    :cond_3
    new-instance v0, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;-><init>()V

    .restart local v0       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    goto :goto_0

    .line 67
    :cond_4
    new-instance v0, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;-><init>()V

    .restart local v0       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    goto :goto_0

    .line 70
    :cond_5
    const-string v3, "text/x-vcalendar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 71
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/client/ClientHandlerFactory;->isFilePush(Lcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 72
    new-instance v0, Lcom/broadcom/bt/app/opp/client/PushClientHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;-><init>()V

    .restart local v0       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    goto :goto_0

    .line 75
    :cond_6
    new-instance v0, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;-><init>()V

    .restart local v0       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    goto :goto_0

    .line 78
    :cond_7
    const-string v3, "text/x-vnote"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 80
    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".vnt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 81
    new-instance v0, Lcom/broadcom/bt/app/opp/client/PushClientHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;-><init>()V

    .restart local v0       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    goto :goto_0

    .line 84
    :cond_8
    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 85
    new-instance v0, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;-><init>()V

    .restart local v0       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    goto/16 :goto_0

    .line 89
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 93
    :cond_a
    new-instance v0, Lcom/broadcom/bt/app/opp/client/PushClientHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;-><init>()V

    .restart local v0       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    goto/16 :goto_0

    .line 96
    :cond_b
    const/4 v3, 0x2

    if-ne v3, v2, :cond_c

    const-string v3, "text/x-vcard"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 98
    new-instance v0, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/client/VCardPullClientHandler;-><init>()V

    .restart local v0       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    goto/16 :goto_0

    .line 100
    :cond_c
    const/4 v3, 0x3

    if-ne v3, v2, :cond_0

    .line 101
    new-instance v0, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/client/VCardExchangeClientHandler;-><init>()V

    .restart local v0       #h:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;
    goto/16 :goto_0
.end method

.method public static isFilePush(Lcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 4
    .parameter "request"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 37
    .local v1, filepath:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 39
    .local v0, contentUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    const/4 v2, 0x1

    .line 43
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
