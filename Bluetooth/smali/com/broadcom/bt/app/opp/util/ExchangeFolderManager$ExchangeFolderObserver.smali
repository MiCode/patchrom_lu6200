.class Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;
.super Landroid/os/FileObserver;
.source "ExchangeFolderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExchangeFolderObserver"
.end annotation


# instance fields
.field mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;->this$0:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    .line 73
    const/16 v0, 0x400

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p2, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;->mPath:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .parameter "event"
    .parameter "path"

    .prologue
    .line 78
    const/16 v0, 0x400

    if-eq p1, v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v0, "ExchangeFolderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exchange folder deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Recreating..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;->stopWatching()V

    .line 85
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;->mPath:Ljava/lang/String;

    #calls: Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->createExchangeFolder(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager$ExchangeFolderObserver;->startWatching()V

    goto :goto_0
.end method
