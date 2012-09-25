.class Lcom/broadcom/bt/app/opp/server/PushServerHandler$1;
.super Ljava/lang/Object;
.source "PushServerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/server/PushServerHandler;->processReceivedFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/server/PushServerHandler;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/server/PushServerHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/PushServerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 374
    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    .local v7, fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/PushServerHandler;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->access$000(Lcom/broadcom/bt/app/opp/server/PushServerHandler;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/PushServerHandler;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->access$100(Lcom/broadcom/bt/app/opp/server/PushServerHandler;)Lcom/broadcom/bt/app/opp/util/BaseService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/app/opp/server/OPPServerService;

    iget-object v0, v0, Lcom/broadcom/bt/app/opp/server/OPPServerService;->mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/PushServerHandler;

    invoke-virtual {v0, v7, v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->scanFiles(Ljava/util/ArrayList;Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/PushServerHandler;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/PushServerHandler;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->access$200(Lcom/broadcom/bt/app/opp/server/PushServerHandler;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/server/PushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/PushServerHandler;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v3}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->access$300(Lcom/broadcom/bt/app/opp/server/PushServerHandler;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #calls: Lcom/broadcom/bt/app/opp/server/PushServerHandler;->setStatusSuccess(JJJ)V
    invoke-static/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;->access$400(Lcom/broadcom/bt/app/opp/server/PushServerHandler;JJJ)V

    .line 383
    return-void

    .line 378
    :catch_0
    move-exception v8

    .line 379
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "PushServerHandler"

    const-string v1, "Error running media scanner"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
