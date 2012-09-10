.class public Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "CameraSettingReceiverBySDM.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    .line 19
    return-void
.end method

.method private getCameraStateInSDM()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 45
    const-string v0, "CameraApp"

    const-string v1, "check enter In SDM"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v6, 0x1

    .line 47
    .local v6, cameraEnableStatus:I
    const/4 v7, 0x0

    .line 50
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/CameraConstants;->SDM_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/camera/properties/CameraConstants;->CAMERA_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 52
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 54
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** cameraEnableStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    if-eqz v7, :cond_0

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 64
    const/4 v7, 0x0

    .line 68
    :cond_0
    :goto_0
    if-ne v6, v9, :cond_4

    move v0, v9

    .line 71
    :goto_1
    return v0

    .line 56
    :cond_1
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** cannot access to SDM server DB, cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    if-eqz v7, :cond_2

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 64
    const/4 v7, 0x0

    :cond_2
    move v0, v9

    goto :goto_1

    .line 59
    :catch_0
    move-exception v8

    .line 60
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v1, "Could not load photo from database"

    invoke-static {v0, v1, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    if-eqz v7, :cond_0

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 64
    const/4 v7, 0x0

    goto :goto_0

    .line 62
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 64
    const/4 v7, 0x0

    :cond_3
    throw v0

    :cond_4
    move v0, v10

    .line 71
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadCastReceiver action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, cameraEnabled:Z
    invoke-direct {p0}, Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;->getCameraStateInSDM()Z

    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b014a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 41
    :cond_0
    return-void
.end method
