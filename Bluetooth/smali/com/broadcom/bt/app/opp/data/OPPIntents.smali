.class public Lcom/broadcom/bt/app/opp/data/OPPIntents;
.super Ljava/lang/Object;
.source "OPPIntents.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAction_ClientCancelAllRequest(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "requestUri"

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "brcm.cnlall"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 289
    return-object v0
.end method

.method public static createAction_ClientCancelRequest(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "requestUri"

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "brcm.cnl"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 283
    return-object v0
.end method

.method public static createAction_ClientExchangeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "mimeType"
    .parameter "remoteAddress"
    .parameter "remoteName"

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "brcm.ex"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0, p0, p1, p2}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->setParams_ExchangeClientRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-object v0
.end method

.method public static createAction_ClientPullRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "mimeType"
    .parameter "remoteAddress"
    .parameter "remoteName"

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "brcm.pl"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0, p0, p1, p2}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->setParams_PullClientRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-object v0
.end method

.method public static createAction_ClientRestartRequest()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "brcm.rst"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, i:Landroid/content/Intent;
    return-object v0
.end method

.method public static createAction_ClientRetryRequest(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "requestUri"

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "brcm.rty"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 277
    return-object v0
.end method

.method public static createAction_ClientSendMultipleRequest(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter "mimeType"
    .parameter "remoteAddress"
    .parameter "remoteName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, contentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "brcm.msd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0, p0, p1, p2, p3}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->setParams_ClientRequest(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-object v0
.end method

.method public static createAction_ClientSendRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "contentUri"
    .parameter "extraText"
    .parameter "mimeType"
    .parameter "remoteAddress"
    .parameter "remoteName"

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "brcm.sd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 250
    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->setParams_ClientRequest(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-object v0
.end method

.method public static createIntent_AccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Landroid/content/Intent;
    .locals 9
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.bluetooth.BluetoothRequestServiceDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v1, "bluetooth_opp_service"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-static/range {v0 .. v8}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Landroid/content/Intent;

    .line 306
    return-object v0
.end method

.method public static createIntent_ClearAccessRequest(I)Landroid/content/Intent;
    .locals 2
    .parameter "id"

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, i:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.action.BT_ACCESS_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "JOB_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    return-object v0
.end method

.method public static createIntent_TransferComplete(IIIILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "role"
    .parameter "direction"
    .parameter "requestType"
    .parameter "status"
    .parameter "mimeType"
    .parameter "filepath"

    .prologue
    .line 325
    const/4 v6, 0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createIntent_TransferComplete(IIIILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent_TransferComplete(IIIILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .parameter "role"
    .parameter "direction"
    .parameter "requestType"
    .parameter "status"
    .parameter "mimeType"
    .parameter "filepath"
    .parameter "totalFiles"

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.TRANSFER_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.bluetooth"

    const-string v2, "com.broadcom.bt.app.opp.OppReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v1, "role"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v1, "direction"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v1, "requesttype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v1, "status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v1, "filecount"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    return-object v0
.end method

.method public static getContentUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .parameter "i"

    .prologue
    .line 142
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static getContentUris(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraNewContentUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .parameter "i"

    .prologue
    .line 146
    const-string v0, "NEW_CONTENT_URI"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static getExtraText(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 150
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReceivedFilepath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 188
    const-string v0, "FILEPATH"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReceivedFormat(Landroid/content/Intent;)I
    .locals 2
    .parameter "i"

    .prologue
    .line 184
    const-string v0, "FORMAT"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static getReceivedOp(Landroid/content/Intent;)I
    .locals 2
    .parameter "i"

    .prologue
    .line 158
    const-string v0, "OPERATION"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static getReceivedTotalBytes(Landroid/content/Intent;)J
    .locals 3
    .parameter "i"

    .prologue
    .line 192
    const-string v0, "TOTAL_BYTES"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRemoteAddress(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 134
    const-string v0, "RMT_DEV_ADDR"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemoteName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 138
    const-string v0, "RMT_DEV_NAME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setParams_ClientRequest(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "i"
    .parameter "contentUri"
    .parameter "extraText"
    .parameter "mimeType"
    .parameter "remoteAddress"
    .parameter "remoteName"

    .prologue
    .line 198
    invoke-virtual {p0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v0, "RMT_DEV_ADDR"

    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v0, "RMT_DEV_NAME"

    invoke-virtual {p0, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    return-void
.end method

.method public static setParams_ClientRequest(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "i"
    .parameter
    .parameter "mimeType"
    .parameter "remoteAddress"
    .parameter "remoteName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, contentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 224
    const-string v0, "RMT_DEV_ADDR"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v0, "RMT_DEV_NAME"

    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    return-void
.end method

.method public static setParams_ExchangeClientRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "i"
    .parameter "mimeType"
    .parameter "remoteAddress"
    .parameter "remoteName"

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v0, "RMT_DEV_ADDR"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v0, "RMT_DEV_NAME"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    return-void
.end method

.method public static setParams_PullClientRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "i"
    .parameter "mimeType"
    .parameter "remoteAddress"
    .parameter "remoteName"

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v0, "RMT_DEV_ADDR"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v0, "RMT_DEV_NAME"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method public static toReceivedOp(I)I
    .locals 1
    .parameter "requestType"

    .prologue
    .line 173
    packed-switch p0, :pswitch_data_0

    .line 179
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 175
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toRequestType(I)I
    .locals 1
    .parameter "receivedOp"

    .prologue
    .line 162
    packed-switch p0, :pswitch_data_0

    .line 168
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 164
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
