.class Lcom/broadcom/bt/service/fm/FmReceiverService$2;
.super Landroid/content/BroadcastReceiver;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$2;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 744
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, action:Ljava/lang/String;
    const-string v3, "FmReceiverService"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 749
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 750
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 765
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 753
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, pkgName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 758
    const-string v3, "FmReceiverService"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$2;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService;->m_ClientName:Ljava/lang/String;
    invoke-static {v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$2400(Lcom/broadcom/bt/service/fm/FmReceiverService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 761
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$2;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOffRadio()I

    goto :goto_0
.end method
