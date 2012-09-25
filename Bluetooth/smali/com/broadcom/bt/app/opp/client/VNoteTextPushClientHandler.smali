.class public Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;
.super Lcom/broadcom/bt/app/opp/client/PushClientHandler;
.source "VNoteTextPushClientHandler.java"


# instance fields
.field private mVNoteFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mFinishCalled:Z

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;->mVNoteFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;->mVNoteFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;->mVNoteFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setupContent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 35
    sget-object v3, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_CONTENT_SETUP:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 38
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v3, p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;)V

    .line 40
    const-string v3, "VNoteTextPushClientHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 43
    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;->onContentSetupError(Ljava/lang/Throwable;)V

    .line 60
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 49
    .local v2, newFileName:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, dot:I
    if-ltz v0, :cond_1

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".vnt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.bluetooth/.tmp/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/app/opp/data/Job;->setFile(Ljava/lang/String;)V

    .line 53
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;->mVNoteFile:Ljava/io/File;

    .line 54
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;->mVNoteFile:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/broadcom/bt/app/opp/content/VNoteUtil;->createFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v3}, Lcom/broadcom/bt/app/opp/util/Utils;->setDefaultFilePermission(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;->onContentSetup()V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/client/VNoteTextPushClientHandler;->onContentSetupError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
