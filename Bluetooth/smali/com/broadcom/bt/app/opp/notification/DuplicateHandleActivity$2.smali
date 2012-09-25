.class Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;
.super Ljava/lang/Object;
.source "DuplicateHandleActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 352
    const-string v1, "DuplicateHandleActivity"

    const-string v2, "onMediaConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$100(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$100(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$200(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v2

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v3}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$200(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v3

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->shutdown(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 363
    const-string v0, "DuplicateHandleActivity"

    const-string v1, "onScanCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$200(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$200(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 366
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$200(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->requestEnded_NoError(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 367
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$100(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->shutdown(Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method

.method public shutdown(Ljava/lang/String;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 373
    const-string v0, "DuplicateHandleActivity"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$100(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$100(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->finish()V

    .line 378
    return-void
.end method
