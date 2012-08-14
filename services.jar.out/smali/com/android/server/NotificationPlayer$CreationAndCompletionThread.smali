.class final Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreationAndCompletionThread"
.end annotation


# instance fields
.field private final DEFAULT_NOTIFICATION_PATH:Ljava/lang/String;

.field public mCmd:Lcom/android/server/NotificationPlayer$Command;

.field final synthetic this$0:Lcom/android/server/NotificationPlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V
    .locals 2
    .parameter
    .parameter "cmd"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    .line 93
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->DEFAULT_NOTIFICATION_PATH:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 98
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 99
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    #setter for: Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v9, v10}, Lcom/android/server/NotificationPlayer;->access$002(Lcom/android/server/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v9, v9, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .local v0, audioManager:Landroid/media/AudioManager;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, v9, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 107
    .local v4, mUri:Landroid/net/Uri;
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    .line 108
    .local v7, player:Landroid/media/MediaPlayer;
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v11, v11, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mUri.getPath() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v11, v11, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v9, "DCM"

    const-string v10, "ro.build.target_operator"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 111
    const/4 v6, 0x0

    .line 112
    .local v6, path:Ljava/lang/String;
    const/4 v8, 0x0

    .line 113
    .local v8, uriPath:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Landroid/drm/DrmManagerClient;

    move-result-object v9

    if-nez v9, :cond_0

    .line 114
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    new-instance v10, Landroid/drm/DrmManagerClient;

    iget-object v11, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v11, v11, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/server/NotificationPlayer;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v9, v10}, Lcom/android/server/NotificationPlayer;->access$202(Lcom/android/server/NotificationPlayer;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    :cond_0
    const/4 v1, 0x0

    .line 118
    .local v1, bCanHandle:Z
    :try_start_2
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 119
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "~~~31> uriPath= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v9, "content://media"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 121
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31> uriPath starts with content://media"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    iget-object v10, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v10, v10, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    #calls: Lcom/android/server/NotificationPlayer;->getFilepathFromContentUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v9, v4, v10}, Lcom/android/server/NotificationPlayer;->access$300(Lcom/android/server/NotificationPlayer;Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 135
    :goto_0
    :try_start_3
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31> creating DrmManagerClient. "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Landroid/drm/DrmManagerClient;

    move-result-object v9

    if-nez v9, :cond_1

    .line 138
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31> mDrmStore is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31> check. mDrmManagerClient.canHandle()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Landroid/drm/DrmManagerClient;

    move-result-object v9

    const-string v10, "audio/mp4"

    invoke-virtual {v9, v6, v10}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 142
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "~~~31> nCanHandle is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 146
    :goto_1
    if-ne v1, v12, :cond_2

    .line 149
    :try_start_4
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31> checkRightsStatus()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Landroid/drm/DrmManagerClient;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v6, v10}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v5

    .line 153
    .local v5, nDrmStatus:I
    packed-switch v5, :pswitch_data_0

    .line 168
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31> default"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 169
    const/4 v4, 0x0

    .line 170
    const/4 v6, 0x0

    .line 180
    .end local v1           #bCanHandle:Z
    .end local v5           #nDrmStatus:I
    .end local v6           #path:Ljava/lang/String;
    .end local v8           #uriPath:Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_5
    const-string v9, "DCM"

    const-string v10, "ro.build.target_operator"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 181
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "~~~31> mUri is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz v4, :cond_8

    .line 185
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v9, v9, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v10, v10, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 197
    :goto_3
    :try_start_6
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v9, v9, Lcom/android/server/NotificationPlayer$Command;->stream:I

    invoke-virtual {v7, v9}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 198
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-boolean v9, v9, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    invoke-virtual {v7, v9}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 200
    const-string v9, "DCM"

    const-string v10, "ro.build.target_operator"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v9

    if-eqz v9, :cond_a

    .line 202
    :try_start_7
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 222
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 223
    :cond_3
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v9, v9, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v9, v9, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v9, v9, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 224
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "NotificationPlayer... gain AudioFocus!!!..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-boolean v9, v9, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    if-eqz v9, :cond_b

    .line 226
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v10, v10, Lcom/android/server/NotificationPlayer$Command;->stream:I

    const/4 v11, 0x1

    invoke-virtual {v0, v9, v10, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 233
    :cond_4
    :goto_5
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v7, v9}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 234
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    .line 235
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$500(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 236
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$500(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    .line 238
    :cond_5
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #setter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v9, v7}, Lcom/android/server/NotificationPlayer;->access$502(Lcom/android/server/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 243
    .end local v4           #mUri:Landroid/net/Uri;
    .end local v7           #player:Landroid/media/MediaPlayer;
    :goto_6
    :try_start_9
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #setter for: Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v9, v0}, Lcom/android/server/NotificationPlayer;->access$602(Lcom/android/server/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 245
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 246
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 247
    return-void

    .line 123
    .restart local v1       #bCanHandle:Z
    .restart local v4       #mUri:Landroid/net/Uri;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #player:Landroid/media/MediaPlayer;
    .restart local v8       #uriPath:Ljava/lang/String;
    :cond_6
    :try_start_a
    const-string v9, "content://settings"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 124
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31> uriPath starts with content://setting"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    iget-object v10, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v10, v10, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    #calls: Lcom/android/server/NotificationPlayer;->getFilepathFromSettingsUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v9, v4, v10}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 127
    :cond_7
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31> uriPath starts"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 128
    move-object v6, v8

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v3

    .line 131
    .local v3, ex:Ljava/lang/Exception;
    :try_start_b
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31> exception is occured whiling check path"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    move-object v6, v8

    goto/16 :goto_0

    .line 143
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 144
    .restart local v3       #ex:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31> exception is occured during checking canHandle"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_1

    .line 240
    .end local v1           #bCanHandle:Z
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #mUri:Landroid/net/Uri;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #player:Landroid/media/MediaPlayer;
    .end local v8           #uriPath:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 241
    .local v2, e:Ljava/lang/Exception;
    :try_start_c
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error loading sound for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v11, v11, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 245
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v9

    .line 155
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #bCanHandle:Z
    .restart local v4       #mUri:Landroid/net/Uri;
    .restart local v5       #nDrmStatus:I
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #player:Landroid/media/MediaPlayer;
    .restart local v8       #uriPath:Ljava/lang/String;
    :pswitch_0
    :try_start_d
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31>  mDrmStore.RightsStatus.RIGHTS_EXPIRED "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31>  mDrmStore.RightsStatus.RIGHTS_INVALID"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31>  mDrmStore.RightsStatus.RIGHTS_NOT_ACQUIRED "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v4, 0x0

    .line 163
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 165
    :pswitch_3
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "~~~31>  mDrmStore.RightsStatus.RIGHTS_VALID"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_2

    .line 172
    .end local v5           #nDrmStatus:I
    :catch_3
    move-exception v3

    .line 173
    .restart local v3       #ex:Ljava/lang/Exception;
    :try_start_e
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "~~~31> exception is occured whiling check nDrmStatus"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_2

    .line 187
    .end local v1           #bCanHandle:Z
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v6           #path:Ljava/lang/String;
    .end local v8           #uriPath:Ljava/lang/String;
    :cond_8
    :try_start_f
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->DEFAULT_NOTIFICATION_PATH:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_3

    .line 192
    :catch_4
    move-exception v2

    .line 193
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_10
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Play default notification sound!! Error setDataSource "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v11, v11, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->DEFAULT_NOTIFICATION_PATH:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_3

    .line 190
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    :try_start_11
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v9, v9, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v10, v10, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_3

    .line 203
    :catch_5
    move-exception v3

    .line 204
    .restart local v3       #ex:Ljava/lang/Exception;
    :try_start_12
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "player.prepare() Error: Try to play a default notification!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->release()V

    .line 207
    const/4 v7, 0x0

    .line 208
    new-instance v7, Landroid/media/MediaPlayer;

    .end local v7           #player:Landroid/media/MediaPlayer;
    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    .line 209
    .restart local v7       #player:Landroid/media/MediaPlayer;
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->DEFAULT_NOTIFICATION_PATH:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 210
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v9, v9, Lcom/android/server/NotificationPlayer$Command;->stream:I

    invoke-virtual {v7, v9}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 211
    iget-object v9, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-boolean v9, v9, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    invoke-virtual {v7, v9}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 213
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    goto/16 :goto_4

    .line 216
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_a
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    goto/16 :goto_4

    .line 228
    :cond_b
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v10, v10, Lcom/android/server/NotificationPlayer$Command;->stream:I

    const/4 v11, 0x3

    invoke-virtual {v0, v9, v10, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_5

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
