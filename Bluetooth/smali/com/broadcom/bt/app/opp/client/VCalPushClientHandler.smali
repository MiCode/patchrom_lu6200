.class public Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;
.super Lcom/broadcom/bt/app/opp/client/PushClientHandler;
.source "VCalPushClientHandler.java"


# instance fields
.field private mVCalFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mFinishCalled:Z

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;->mVCalFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;->mVCalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;->mVCalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setupContent()V
    .locals 9

    .prologue
    .line 38
    sget-object v6, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_CONTENT_SETUP:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 41
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v6, p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;)V

    .line 44
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const-string v7, "/data/data/com.android.bluetooth/.tmp/tx_vcal.vcs"

    invoke-virtual {v6, v7}, Lcom/broadcom/bt/app/opp/data/Job;->setFile(Ljava/lang/String;)V

    .line 46
    const-string v6, "VCalPushClientHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "****URI="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    if-nez v6, :cond_1

    .line 48
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;->onContentSetupError(Ljava/lang/Throwable;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v7, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;->mVCalFile:Ljava/io/File;

    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    const/4 v2, 0x0

    .line 55
    .local v2, fileWriter:Ljava/io/Writer;
    :try_start_0
    new-instance v5, Lcom/broadcom/bt/service/opp/VCalManager;

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Lcom/broadcom/bt/service/opp/VCalManager;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v4           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .local v5, vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    :try_start_1
    invoke-virtual {v5}, Lcom/broadcom/bt/service/opp/VCalManager;->getData()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, data:Ljava/lang/String;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;->mVCalFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 58
    .end local v2           #fileWriter:Ljava/io/Writer;
    .local v3, fileWriter:Ljava/io/Writer;
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 64
    if-eqz v3, :cond_2

    .line 66
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 67
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 75
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v6}, Lcom/broadcom/bt/app/opp/util/Utils;->setDefaultFilePermission(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;->onContentSetup()V

    goto :goto_0

    .line 59
    .end local v0           #data:Ljava/lang/String;
    .end local v3           #fileWriter:Ljava/io/Writer;
    .end local v5           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v2       #fileWriter:Ljava/io/Writer;
    .restart local v4       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v6, "VCalPushClientHandler"

    const-string v7, "Error creating vcard"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/client/VCalPushClientHandler;->onContentSetupError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    if-eqz v2, :cond_0

    .line 66
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 67
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 68
    :catch_1
    move-exception v6

    goto :goto_0

    .line 64
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_3

    .line 66
    :try_start_6
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 67
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 64
    :cond_3
    :goto_4
    throw v6

    .line 68
    .end local v2           #fileWriter:Ljava/io/Writer;
    .end local v4           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v3       #fileWriter:Ljava/io/Writer;
    .restart local v5       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v0           #data:Ljava/lang/String;
    .end local v3           #fileWriter:Ljava/io/Writer;
    .end local v5           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v2       #fileWriter:Ljava/io/Writer;
    .restart local v4       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 64
    .end local v4           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v5       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v4       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    goto :goto_3

    .end local v2           #fileWriter:Ljava/io/Writer;
    .end local v4           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v3       #fileWriter:Ljava/io/Writer;
    .restart local v5       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #fileWriter:Ljava/io/Writer;
    .restart local v2       #fileWriter:Ljava/io/Writer;
    move-object v4, v5

    .end local v5           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v4       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    goto :goto_3

    .line 59
    .end local v0           #data:Ljava/lang/String;
    .end local v4           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v5       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v4       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    goto :goto_2

    .end local v2           #fileWriter:Ljava/io/Writer;
    .end local v4           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v3       #fileWriter:Ljava/io/Writer;
    .restart local v5       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #fileWriter:Ljava/io/Writer;
    .restart local v2       #fileWriter:Ljava/io/Writer;
    move-object v4, v5

    .end local v5           #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    .restart local v4       #vCalManager:Lcom/broadcom/bt/service/opp/VCalManager;
    goto :goto_2
.end method
