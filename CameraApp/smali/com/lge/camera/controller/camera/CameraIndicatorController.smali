.class public Lcom/lge/camera/controller/camera/CameraIndicatorController;
.super Lcom/lge/camera/controller/IndicatorController;
.source "CameraIndicatorController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/IndicatorController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 28
    return-void
.end method

.method private calculateTakenPictures()I
    .locals 9

    .prologue
    .line 322
    const/4 v8, 0x0

    .line 323
    .local v8, result:I
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 324
    .local v1, uriImages:Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    .line 325
    .local v2, projection:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/StorageController;->getBucketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, whereClause:Ljava/lang/String;
    const/4 v0, 0x0

    .line 329
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 332
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 333
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 335
    if-eqz v6, :cond_0

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 341
    :cond_0
    if-eqz v6, :cond_1

    .line 342
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 343
    const/4 v6, 0x0

    .line 347
    :cond_1
    :goto_0
    return v8

    .line 338
    :catch_0
    move-exception v7

    .line 339
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "CameraApp"

    const-string v5, "cursor error "

    invoke-static {v4, v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    if-eqz v6, :cond_1

    .line 342
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 343
    const/4 v6, 0x0

    goto :goto_0

    .line 341
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v6, :cond_2

    .line 342
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 343
    const/4 v6, 0x0

    :cond_2
    throw v4
.end method


# virtual methods
.method protected getMediator()Lcom/lge/camera/CameraMediator;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    return-object v0
.end method

.method protected bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    return-object v0
.end method

.method public initController()V
    .locals 5

    .prologue
    const v4, 0x7f090026

    const/4 v3, 0x0

    .line 36
    const v1, 0x7f090065

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->inflateStub(I)Landroid/view/View;

    .line 37
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 41
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateSizeIndicator()V

    .line 42
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateFocusIndicator()V

    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateSceneIndicator()V

    .line 44
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateRemainIndicator()V

    .line 45
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateTimerIndicator()V

    .line 46
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateGpsIndicator()V

    .line 47
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateFlashIndicator()V

    .line 48
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateStorageIndicator()V

    .line 49
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateVoiceIndicator(Z)V

    .line 51
    invoke-super {p0}, Lcom/lge/camera/controller/IndicatorController;->initController()V

    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 55
    .local v0, degree:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09002a

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 56
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090021

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 57
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09002b

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 58
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090025

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 59
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090029

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 60
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09001f

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 61
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090023

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 62
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 63
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09001e

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 64
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090024

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 65
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090028

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 66
    invoke-virtual {p0, v0, v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->startRotation(IZ)V

    .line 68
    .end local v0           #degree:I
    :cond_0
    return-void
.end method

.method public startRotation(IZ)V
    .locals 2
    .parameter "degree"
    .parameter "rotation"

    .prologue
    .line 235
    const v1, 0x7f09002d

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateTextView;

    .line 237
    .local v0, remainView:Lcom/lge/camera/components/RotateTextView;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 253
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/RotateTextView;->setDegree(IZ)V

    .line 256
    :cond_0
    return-void

    .line 240
    :pswitch_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateTextView;->setTextGravity(I)V

    goto :goto_0

    .line 243
    :pswitch_1
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateTextView;->setTextGravity(I)V

    goto :goto_0

    .line 246
    :pswitch_2
    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateTextView;->setTextGravity(I)V

    goto :goto_0

    .line 249
    :pswitch_3
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateTextView;->setTextGravity(I)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateFlashIndicator()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 191
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 196
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 198
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 199
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 204
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_flash"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v2

    const-string v3, "key_flash"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 206
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 201
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_1

    .line 212
    :cond_3
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateFocusIndicator()V
    .locals 4

    .prologue
    .line 135
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_focus"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 139
    const v2, 0x7f09002b

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 140
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 142
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 143
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 148
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v2

    const-string v3, "key_focus"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 149
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 145
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateGpsIndicator()V
    .locals 5

    .prologue
    .line 217
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const v3, 0x7f09001f

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 221
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v3

    const-string v4, "key_camera_tag_location"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 223
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 225
    .local v1, loc:Landroid/location/Location;
    if-nez v1, :cond_2

    .line 226
    const-string v3, "CameraApp"

    const-string v4, "Location info not available"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 229
    :cond_2
    const v3, 0x7f020066

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateRemainIndicator()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 259
    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/CameraStorageController;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 260
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "updateRemainIndicator return: not initialized"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    const v4, 0x7f09002d

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateTextView;

    .line 265
    .local v2, remainIndicator:Lcom/lge/camera/components/RotateTextView;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v0

    .line 267
    .local v0, remain:J
    if-eqz v2, :cond_1

    .line 270
    const-wide v4, 0x174876e7ffL

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 271
    const-string v4, "99999999999+"

    .line 274
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_5

    .line 275
    const-string v3, ""

    .line 284
    .local v3, remainString:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    .end local v3           #remainString:Ljava/lang/String;
    :cond_5
    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .restart local v3       #remainString:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->showCapturedImageCountInRemainIndicator()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->calculateTakenPictures()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public updateSceneIndicator()V
    .locals 4

    .prologue
    .line 156
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const v2, 0x7f090025

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 162
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v2

    const-string v3, "key_scene_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 167
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 169
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSizeIndicator()V
    .locals 9

    .prologue
    const v8, 0x7f020041

    const v7, 0x7f020040

    const v6, 0x7f02004a

    .line 71
    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v4, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_camera_picturesize"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    .line 75
    const v4, 0x7f09002a

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 76
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v4

    const-string v5, "key_camera_picturesize"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 78
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_2

    .line 79
    const-string v4, "CameraApp"

    const-string v5, "pref is Null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 83
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v4

    const-string v5, "key_camera_shot_mode"

    invoke-virtual {v4, v5}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, shotMode:Ljava/lang/String;
    const-string v4, "shotmode_normal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "not found"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "shotmode_hdr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 95
    :cond_4
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    :cond_5
    const-string v4, "shotmode_continuous"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "shotmode_panorama"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    :cond_6
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_camera_shot_mode"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 103
    .local v3, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_e

    .line 105
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1536x864"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 106
    invoke-virtual {v0, v6}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 107
    :cond_7
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1296x864"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 108
    invoke-virtual {v0, v6}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 109
    :cond_8
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1280x768"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 110
    invoke-virtual {v0, v6}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 111
    :cond_9
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1280x960"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 112
    invoke-virtual {v0, v7}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 113
    :cond_a
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "800x480"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 114
    const v4, 0x7f02004d

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 115
    :cond_b
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v4

    const-string v5, "key_camera_shot_mode"

    invoke-virtual {v4, v5}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shotmode_continuous"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_c

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v4

    const/16 v5, 0xe

    if-ne v4, v5, :cond_d

    .line 119
    :cond_c
    invoke-virtual {v0, v7}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 122
    :cond_d
    invoke-virtual {v0, v8}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 125
    :cond_e
    invoke-virtual {v0, v8}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public updateTimerIndicator()V
    .locals 4

    .prologue
    .line 176
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const v2, 0x7f090029

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 180
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v2

    const-string v3, "key_camera_timer"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 182
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 184
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 186
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateVoiceIndicator(Z)V
    .locals 6
    .parameter "recog"

    .prologue
    const v5, 0x7f020099

    const/16 v4, 0x8

    .line 289
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 294
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v2

    if-nez v2, :cond_2

    .line 297
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v2

    const-string v3, "key_voiceshutter"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 302
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_5

    .line 303
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 304
    if-eqz p1, :cond_3

    .line 305
    const v2, 0x7f02009a

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 309
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 311
    :cond_4
    const v2, 0x7f020031

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 312
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 316
    :cond_5
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 317
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method
