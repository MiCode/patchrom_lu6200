.class Lcom/broadcom/bt/app/opp/client/OPPClientService$4;
.super Ljava/lang/Object;
.source "OPPClientService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/client/OPPClientService;->processMultiSendAction(Landroid/content/Intent;I)V
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
    .line 294
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iput-object p2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$i:Landroid/content/Intent;

    iput p3, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 297
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v10, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$i:Landroid/content/Intent;

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/broadcom/bt/app/opp/content/ContentFactory;->setupContent(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v0, 0x1

    .line 298
    .local v0, contentSetupError:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 299
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #calls: Lcom/broadcom/bt/app/opp/client/OPPClientService;->startShutdownIfNotRunning()V
    invoke-static {v9}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$500(Lcom/broadcom/bt/app/opp/client/OPPClientService;)V

    .line 362
    :cond_0
    :goto_1
    return-void

    .line 297
    .end local v0           #contentSetupError:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    .restart local v0       #contentSetupError:Z
    :cond_2
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$i:Landroid/content/Intent;

    invoke-static {v9}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getExtraNewContentUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 303
    .local v1, contentUri:Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 306
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v10, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$i:Landroid/content/Intent;

    iget v11, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$startId:I

    #calls: Lcom/broadcom/bt/app/opp/client/OPPClientService;->processSendAction(Landroid/content/Intent;I)V
    invoke-static {v9, v10, v11}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$600(Lcom/broadcom/bt/app/opp/client/OPPClientService;Landroid/content/Intent;I)V

    goto :goto_1

    .line 311
    :cond_3
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$i:Landroid/content/Intent;

    invoke-static {v9}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getContentUris(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 312
    .local v2, contentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$i:Landroid/content/Intent;

    invoke-static {v9}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getMimeType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, mimeType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 315
    .local v7, numUris:I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 316
    const/4 v8, 0x0

    .local v8, u:I
    :goto_2
    if-ge v8, v7, :cond_6

    .line 317
    new-instance v5, Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct {v5}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 320
    .local v5, j:Lcom/broadcom/bt/app/opp/data/Job;
    const/4 v9, 0x0

    iput v9, v5, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    .line 321
    const/4 v9, 0x0

    iput v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 322
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "C"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mServiceId:J
    invoke-static {v10}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$100(Lcom/broadcom/bt/app/opp/client/OPPClientService;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$startId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    .line 323
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "C"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mServiceId:J
    invoke-static {v10}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$100(Lcom/broadcom/bt/app/opp/client/OPPClientService;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$startId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    .line 324
    const/16 v9, 0xbe

    iput v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 325
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$i:Landroid/content/Intent;

    invoke-static {v9}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getRemoteAddress(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 326
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$i:Landroid/content/Intent;

    invoke-static {v9}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getRemoteName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    .line 327
    iput-object v6, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 330
    const/4 v9, 0x1

    iput v9, v5, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 331
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 332
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v10, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/broadcom/bt/app/opp/util/Utils;->getContentFilePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/broadcom/bt/app/opp/data/Job;->setFile(Ljava/lang/String;)V

    .line 334
    const-wide/16 v9, 0x1

    iput-wide v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 335
    if-eqz v1, :cond_4

    iget-object v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 337
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v9, v9

    int-to-long v9, v9

    iput-wide v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v4           #f:Ljava/io/File;
    :goto_3
    add-int/lit8 v9, v8, 0x1

    if-ne v9, v7, :cond_5

    .line 353
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
    invoke-static {v9}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$700(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    move-result-object v9

    iget v10, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$startId:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v5, v11, v12}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->addRequest(ILjava/lang/Object;ZZ)Z

    .line 316
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 339
    :catch_0
    move-exception v3

    .line 340
    .local v3, e:Ljava/lang/Exception;
    const-wide/16 v9, 0x64

    iput-wide v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 341
    const-string v9, "OPPClientService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[BTUI] ERROR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 344
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    const-wide/16 v9, 0x64

    iput-wide v9, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    goto :goto_3

    .line 356
    :cond_5
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
    invoke-static {v9}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$800(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    move-result-object v9

    iget v10, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$4;->val$startId:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v5, v11, v12}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->addRequest(ILjava/lang/Object;ZZ)Z

    goto :goto_4

    .line 360
    .end local v5           #j:Lcom/broadcom/bt/app/opp/data/Job;
    :cond_6
    invoke-static {}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->refreshAll()V

    goto/16 :goto_1
.end method
