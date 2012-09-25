.class public Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;
.super Lcom/broadcom/bt/app/opp/client/PushClientHandler;
.source "VCardPushClientHandler.java"


# instance fields
.field mVCardFile:Ljava/io/File;


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
    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mFinishCalled:Z

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;->mVCardFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;->mVCardFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;->mVCardFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 70
    :cond_0
    invoke-super {p0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setupContent()V
    .locals 4

    .prologue
    .line 36
    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_CONTENT_SETUP:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 37
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->isFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;->onContentSetup()V

    .line 63
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.android.bluetooth/.tmp/tx_vcard.vcf"

    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data/data/com.android.bluetooth/.tmp/tx_vcard.vcf"

    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, filename:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/app/opp/data/Job;->setFile(Ljava/lang/String;)V

    .line 53
    const-string v1, "VCardPushClientHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****URI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;->mVCardFile:Ljava/io/File;

    .line 56
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;->mVCardFile:Ljava/io/File;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/service/opp/VCardUtil;->create(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->setDefaultFilePermission(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;->onContentSetup()V

    goto :goto_0

    .line 60
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/client/VCardPushClientHandler;->onContentSetupError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
