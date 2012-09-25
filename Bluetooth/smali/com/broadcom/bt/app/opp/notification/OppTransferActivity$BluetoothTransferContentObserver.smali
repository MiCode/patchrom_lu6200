.class Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;
.super Landroid/database/ContentObserver;
.source "OppTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothTransferContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 165
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$000(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 166
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->finish()V

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$100(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_1

    .line 181
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v1, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$202(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/Job;

    .line 184
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$200(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v1, 0x1e6

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$200(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/data/Job;->isStatusFinished()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsDupHandled:Z
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$300(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->finish()V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mIsDupHandled:Z
    invoke-static {v0, v3}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$302(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;Z)Z

    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$200(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    .line 195
    if-eq v3, v0, :cond_4

    const/4 v1, 0x5

    if-ne v1, v0, :cond_5

    .line 197
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    const-class v2, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    const-string v1, "SHOW_DLG"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    :goto_1
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$100(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->finish()V

    goto :goto_0

    .line 200
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    const-class v2, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->updateProgressbar()V
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$400(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)V

    .line 212
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->updateTransferLabels()V
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;->access$500(Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;)V

    goto/16 :goto_0
.end method
