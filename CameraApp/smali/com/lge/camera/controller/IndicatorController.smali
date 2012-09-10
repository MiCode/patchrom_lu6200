.class public abstract Lcom/lge/camera/controller/IndicatorController;
.super Lcom/lge/camera/controller/Controller;
.source "IndicatorController.java"


# static fields
.field private static mBatteryIconResources:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x2a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    return-void

    :array_0
    .array-data 0x4
        0x6dt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
        0x82t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
        0x8at 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 23
    return-void
.end method

.method private invalidateParentLayout()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 64
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected getNewVoiceMailIcon()I
    .locals 11

    .prologue
    const/4 v4, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 172
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v3

    if-eq v3, v4, :cond_0

    move v3, v9

    .line 219
    :goto_0
    return v3

    .line 175
    :cond_0
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    move v3, v9

    .line 176
    goto :goto_0

    .line 178
    :cond_1
    const/4 v8, 0x0

    .line 180
    .local v8, vvmCount:I
    const/4 v6, 0x0

    .line 183
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "content://com.lge.provider.vvm/vvmInfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    .local v1, VvmInfoURI:Landroid/net/Uri;
    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date_time"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "urgency"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "private"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "from_addrs"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "heard_status"

    aput-object v4, v2, v3

    .line 189
    .local v2, projection:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 191
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    if-nez v0, :cond_3

    .line 208
    if-eqz v6, :cond_2

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v6, 0x0

    :cond_2
    move v3, v9

    goto :goto_0

    .line 197
    :cond_3
    :try_start_1
    const-string v3, "DataBaseApp"

    const-string v4, "Accessing data from VvmInfo Table"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v3, "heard_status==\'N\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 199
    const/4 v0, 0x0

    .line 201
    if-eqz v6, :cond_4

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 208
    :cond_4
    if-eqz v6, :cond_5

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v6, 0x0

    .line 214
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #VvmInfoURI:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    :cond_5
    :goto_1
    if-eqz v8, :cond_7

    .line 215
    const-string v3, "CameraApp"

    const-string v4, "getNewVoiceMailIcon() return = 1"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    .line 216
    goto :goto_0

    .line 204
    :catch_0
    move-exception v7

    .line 206
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    if-eqz v6, :cond_5

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v6, 0x0

    goto :goto_1

    .line 208
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_6

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v6, 0x0

    :cond_6
    throw v3

    .line 218
    :cond_7
    const-string v3, "CameraApp"

    const-string v4, "getNewVoiceMailIcon() return = 0"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v9

    .line 219
    goto/16 :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 37
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 43
    :cond_1
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initController()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 28
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mBroadCastReceiverDefine:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    iget-object v0, v0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setMessageIndicatorReceived(I)V

    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getNewVoiceMailIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setVoiceMailIndicator(I)V

    .line 31
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getBatteryLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setBatteryIndicator(I)V

    .line 33
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 34
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mBroadCastReceiverDefine:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    iget-object v0, v0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setMessageIndicatorReceived(I)V

    .line 251
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getNewVoiceMailIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setVoiceMailIndicator(I)V

    .line 252
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getBatteryLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setBatteryIndicator(I)V

    .line 254
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 255
    return-void
.end method

.method public setBatteryIndicator(I)V
    .locals 2
    .parameter "batteryLevel"

    .prologue
    .line 159
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    const v1, 0x7f090024

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 164
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    sget-object v1, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 165
    sget-object v1, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    .line 167
    :cond_1
    sget-object v1, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setMessageIndicatorReceived(I)V
    .locals 2
    .parameter "msgReceived"

    .prologue
    .line 72
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 75
    :cond_0
    const v1, 0x7f09001e

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 77
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-nez p1, :cond_2

    .line 78
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 87
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/controller/IndicatorController;->invalidateParentLayout()V

    goto :goto_0

    .line 80
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 81
    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 83
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 84
    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setVoiceMailIndicator(I)V
    .locals 2
    .parameter "msgReceived"

    .prologue
    .line 91
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->DisplayVisualVoiceMailIndicator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const v1, 0x7f09001c

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 99
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 100
    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 106
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/controller/IndicatorController;->invalidateParentLayout()V

    goto :goto_0

    .line 102
    :cond_3
    if-nez p1, :cond_2

    .line 103
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract updateFlashIndicator()V
.end method

.method public abstract updateGpsIndicator()V
.end method

.method public abstract updateSizeIndicator()V
.end method

.method public updateStorageIndicator()V
    .locals 5

    .prologue
    .line 224
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const v3, 0x7f090023

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/IndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 229
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v3

    const-string v4, "key_storage"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 231
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, iconIndex:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/StorageController;->getCurrentStorage()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 234
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getEmmcName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 239
    :goto_1
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResources()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 237
    :cond_2
    const-string v3, "external memory"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method
