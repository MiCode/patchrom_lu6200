.class Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback$1;
.super Ljava/lang/Object;
.source "ExchangeFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

.field final synthetic val$proxy:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback$1;->this$1:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

    iput-object p2, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback$1;->val$proxy:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback$1;->val$proxy:Ljava/lang/Object;

    check-cast v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 103
    .local v0, oppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    if-nez v0, :cond_0

    .line 104
    const-string v1, "ExchangeFolderManager"

    const-string v2, "FATAL: Unable to get proxy object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v1, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->OPP_EXCHANGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->setExchangeFolder(Ljava/lang/String;)V

    .line 109
    const-string v1, "/data/data/com.android.bluetooth/.tmp/op_default.vcf"

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->setOwnerVcard(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback$1;->this$1:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    const/4 v2, 0x1

    #setter for: Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mOppProxySet:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->access$202(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Z)Z

    .line 113
    const-string v1, "ExchangeFolderManager"

    const-string v2, "Exchange folder and owner vcard set!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->finish()V

    .line 116
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback$1;->this$1:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mProxyCallback:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->access$302(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;)Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

    .line 117
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback$1;->this$1:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$OPPProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mPendingInit:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->access$402(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Z)Z

    goto :goto_0
.end method
