.class Lcom/broadcom/bt/app/opp/client/OPPClientService$1;
.super Ljava/lang/Object;
.source "OPPClientService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/client/OPPClientService;->processSendAction(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

.field final synthetic val$i:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iput-object p2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->val$i:Landroid/content/Intent;

    iput p3, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 189
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->val$i:Landroid/content/Intent;

    invoke-static {v5, v6, v7}, Lcom/broadcom/bt/app/opp/content/ContentFactory;->setupContent(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    .line 190
    .local v0, contentSetupOk:Z
    if-nez v0, :cond_0

    .line 191
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #calls: Lcom/broadcom/bt/app/opp/client/OPPClientService;->startShutdownIfNotRunning()V
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$000(Lcom/broadcom/bt/app/opp/client/OPPClientService;)V

    .line 230
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->val$i:Landroid/content/Intent;

    invoke-static {v5}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getExtraNewContentUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, contentUri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 196
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->val$i:Landroid/content/Intent;

    invoke-static {v5}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getContentUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 199
    :cond_1
    new-instance v4, Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct {v4}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 200
    .local v4, j:Lcom/broadcom/bt/app/opp/data/Job;
    iput v7, v4, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    .line 201
    iput v7, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mServiceId:J
    invoke-static {v6}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$100(Lcom/broadcom/bt/app/opp/client/OPPClientService;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->val$startId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    .line 203
    iget-object v5, v4, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    iput-object v5, v4, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    .line 204
    const/16 v5, 0xbe

    iput v5, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 205
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->val$i:Landroid/content/Intent;

    invoke-static {v5}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getRemoteAddress(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 206
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->val$i:Landroid/content/Intent;

    invoke-static {v5}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getRemoteName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    .line 207
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->val$i:Landroid/content/Intent;

    invoke-static {v5}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getMimeType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 208
    iput v8, v4, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 209
    if-eqz v1, :cond_2

    .line 210
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 211
    :cond_2
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v6, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/broadcom/bt/app/opp/util/Utils;->getContentFilePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/broadcom/bt/app/opp/data/Job;->setFile(Ljava/lang/String;)V

    .line 212
    const-wide/16 v5, 0x1

    iput-wide v5, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 214
    if-eqz v1, :cond_3

    iget-object v5, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 216
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v5, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v3           #f:Ljava/io/File;
    :goto_1
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$200(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    move-result-object v5

    iget v6, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$1;->val$startId:I

    invoke-virtual {v5, v6, v4, v8, v8}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->addRequest(ILjava/lang/Object;ZZ)Z

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v2

    .line 219
    .local v2, e:Ljava/lang/Exception;
    iput-wide v9, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 220
    const-string v5, "OPPClientService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BTUI] ERROR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    iput-wide v9, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    goto :goto_1
.end method
