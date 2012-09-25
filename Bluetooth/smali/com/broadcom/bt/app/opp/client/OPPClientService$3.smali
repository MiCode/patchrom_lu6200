.class Lcom/broadcom/bt/app/opp/client/OPPClientService$3;
.super Ljava/lang/Object;
.source "OPPClientService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/client/OPPClientService;->processExchangeAction(Landroid/content/Intent;I)V
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
.method constructor <init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;ILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iput p2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;->val$startId:I

    iput-object p3, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;->val$i:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 271
    new-instance v0, Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 272
    .local v0, j:Lcom/broadcom/bt/app/opp/data/Job;
    iput v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    .line 273
    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mServiceId:J
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$100(Lcom/broadcom/bt/app/opp/client/OPPClientService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;->val$startId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    .line 275
    iget-object v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    iput-object v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    .line 276
    const/16 v1, 0xbe

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 277
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;->val$i:Landroid/content/Intent;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getRemoteAddress(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;->val$i:Landroid/content/Intent;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getRemoteName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;->val$i:Landroid/content/Intent;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getMimeType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 280
    const/4 v1, 0x3

    iput v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 281
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$400(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$3;->val$startId:I

    invoke-virtual {v1, v2, v0, v4, v4}, Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;->addRequest(ILjava/lang/Object;ZZ)Z

    .line 282
    return-void
.end method
