.class public abstract Lcom/lge/camera/setting/CameraSettingMenu;
.super Lcom/lge/camera/setting/SettingMenu;
.source "CameraSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V
    .locals 1
    .parameter "mediator"
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lge/camera/setting/SettingMenu;-><init>(Lcom/lge/camera/Mediator;)V

    .line 14
    iput-object p3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 15
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p0}, Lcom/lge/camera/setting/Setting;->addObserver(Ljava/util/Observer;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getSetting()Lcom/lge/camera/setting/CameraSetting;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    check-cast v0, Lcom/lge/camera/setting/CameraSetting;

    return-object v0
.end method

.method public bridge synthetic getSetting()Lcom/lge/camera/setting/Setting;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/lge/camera/setting/CameraSettingMenu;->getSetting()Lcom/lge/camera/setting/CameraSetting;

    move-result-object v0

    return-object v0
.end method

.method protected initMenu()V
    .locals 17

    .prologue
    .line 23
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v7, 0x0

    .line 25
    .local v7, j:I
    const-string v9, ""

    .line 30
    .local v9, menuName:Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    .line 32
    const/4 v4, 0x4

    .line 33
    .local v4, index:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v11, removeIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x5

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v14}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v14

    if-ge v3, v14, :cond_8

    .line 36
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v14, v3}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 37
    .local v8, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v8, :cond_1

    .line 35
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, "key_camera_shutter_sound"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShutterSoundOff()Z

    move-result v14

    if-nez v14, :cond_2

    .line 43
    const/4 v14, 0x4

    new-array v5, v14, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    const v16, 0x7f0b00d8

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    const v16, 0x7f0b00d9

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    const v16, 0x7f0b00da

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    const v16, 0x7f0b00db

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v14

    .line 47
    .local v5, itemlist:[Ljava/lang/CharSequence;
    const/4 v14, 0x4

    new-array v6, v14, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const-string v15, "0"

    aput-object v15, v6, v14

    const/4 v14, 0x1

    const-string v15, "1"

    aput-object v15, v6, v14

    const/4 v14, 0x2

    const-string v15, "2"

    aput-object v15, v6, v14

    const/4 v14, 0x3

    const-string v15, "3"

    aput-object v15, v6, v14

    .line 48
    .local v6, itemvalues:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v14, v3}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 49
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v14, v3}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 52
    .end local v5           #itemlist:[Ljava/lang/CharSequence;
    .end local v6           #itemvalues:[Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 53
    .local v2, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 55
    .local v13, values:[Ljava/lang/CharSequence;
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, "key_camera_anti_banding"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v14

    const/4 v15, 0x7

    if-eq v14, v15, :cond_3

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 62
    :cond_3
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 63
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 64
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useCheeseShutterTitle()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 65
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, "key_voiceshutter"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 66
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    const v15, 0x7f0b00f7

    invoke-virtual {v14, v15}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 70
    :cond_4
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, "key_zoom"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 75
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 77
    new-instance v10, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v4, v14}, Lcom/lge/camera/setting/SettingMenuItem;-><init>(ILjava/lang/String;)V

    .line 78
    .local v10, parentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    .line 79
    .local v12, selectedPos:I
    if-gez v12, :cond_6

    const/4 v12, 0x0

    .line 80
    :cond_6
    invoke-virtual {v10, v12}, Lcom/lge/camera/setting/SettingMenuItem;->setSelectedChildPosition(I)V

    .line 81
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v10, v14}, Lcom/lge/camera/setting/SettingMenuItem;->setIconResource(I)V

    .line 82
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/lge/camera/setting/SettingMenuItem;->setCommand(Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v7, 0x0

    :goto_2
    array-length v14, v2

    if-ge v7, v14, :cond_0

    .line 86
    aget-object v14, v2, v7

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useCheeseShutterTitle()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 88
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, "key_help_guide"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    const v15, 0x7f0b00f2

    invoke-virtual {v14, v15}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    const v15, 0x7f0b00f7

    invoke-virtual {v14, v15}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 93
    :cond_7
    new-instance v1, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-direct {v1, v7, v9}, Lcom/lge/camera/setting/SettingMenuItem;-><init>(ILjava/lang/String;)V

    .line 94
    .local v1, childMenu:Lcom/lge/camera/setting/SettingMenuItem;
    aget-object v14, v13, v7

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/lge/camera/setting/SettingMenuItem;->setParameterValue(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/lge/camera/setting/SettingMenuItem;->setCommand(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v10, v1}, Lcom/lge/camera/setting/SettingMenuItem;->addChild(Lcom/lge/camera/setting/SettingMenuItem;)V

    .line 85
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 100
    .end local v1           #childMenu:Lcom/lge/camera/setting/SettingMenuItem;
    .end local v2           #entries:[Ljava/lang/CharSequence;
    .end local v8           #listPref:Lcom/lge/camera/setting/ListPreference;
    .end local v10           #parentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    .end local v12           #selectedPos:I
    .end local v13           #values:[Ljava/lang/CharSequence;
    :cond_8
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 101
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v3, v14, -0x1

    :goto_3
    if-ltz v3, :cond_9

    .line 102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v15, v14}, Lcom/lge/camera/setting/PreferenceGroup;->removePreference(I)V

    .line 101
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 105
    :cond_9
    return-void
.end method
