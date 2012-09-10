.class public Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;
.super Lcom/lge/camera/controller/QuickFunctionController;
.source "CamcorderQuickFunctionController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method


# virtual methods
.method protected getMediator()Lcom/lge/camera/CamcorderMediator;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method

.method protected bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    return-object v0
.end method

.method public setMmsLimit(Z)V
    .locals 1
    .parameter "mmsVideo"

    .prologue
    .line 24
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$1;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$1;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;Z)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method public setMmsLimitUiQfl(Z)V
    .locals 14
    .parameter "mmsVideo"

    .prologue
    .line 34
    iget-boolean v10, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQflInit:Z

    if-nez v10, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v10

    new-instance v11, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$2;

    invoke-direct {v11, p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$2;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;Z)V

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v11, v12, v13}, Lcom/lge/camera/CamcorderMediator;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v10}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v10

    const-string v11, "key_preview_size_on_device"

    invoke-virtual {v10, v11}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 44
    .local v8, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v8, :cond_0

    .line 47
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 49
    .local v7, values:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v10}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v10

    const-string v11, "key_preview_size_on_device"

    invoke-virtual {v10, v11}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v9

    .line 50
    .local v9, videoSizePrefIndex:I
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, selectedResolution:Ljava/lang/String;
    invoke-virtual {v8, v5}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 52
    .local v4, selectedIndex:I
    if-gez v4, :cond_2

    const/4 v4, 0x0

    .line 55
    :cond_2
    if-eqz p1, :cond_6

    .line 56
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 57
    const/4 v6, 0x0

    .line 58
    .local v6, size:Ljava/lang/String;
    const/4 v3, 0x1

    .line 59
    .local v3, needChange:Z
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v7

    .local v2, len:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 60
    aget-object v10, v7, v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-static {v6}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableMmsResolution(Ljava/lang/String;)Z

    move-result v0

    .line 62
    .local v0, available:Z
    if-eqz v0, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 63
    const/4 v3, 0x0

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v0           #available:Z
    :cond_4
    if-eqz v3, :cond_6

    .line 67
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getMmsResolutions()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v5, v10, v11

    .line 68
    invoke-virtual {v8, v5}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 69
    if-gez v4, :cond_5

    const/4 v4, 0x0

    .line 71
    :cond_5
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v11, "key_preview_size_on_device"

    invoke-virtual {v10, v11, v5}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #needChange:Z
    .end local v6           #size:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v9, v4}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->setMenuIcon(II)V

    goto :goto_0
.end method

.method public setMmsLimitUiSubmenu(Z)V
    .locals 18
    .parameter "mmsVideo"

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v14, :cond_1

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v14

    new-instance v15, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$3;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;Z)V

    const-wide/16 v16, 0xc8

    invoke-virtual/range {v14 .. v17}, Lcom/lge/camera/CamcorderMediator;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v14}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v14

    const-string v15, "key_preview_size_on_device"

    invoke-virtual {v14, v15}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v12

    .line 89
    .local v12, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v12, :cond_0

    .line 92
    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 94
    .local v11, values:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getMenuViewId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 95
    .local v10, subMenuView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v14}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v14

    const-string v15, "key_preview_size_on_device"

    invoke-virtual {v14, v15}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v13

    .line 96
    .local v13, videoSizePrefIndex:I
    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, selectedResolution:Ljava/lang/String;
    invoke-virtual {v12, v7}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 98
    .local v6, selectedIndex:I
    if-gez v6, :cond_2

    const/4 v6, 0x0

    .line 100
    :cond_2
    if-eqz p1, :cond_6

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 102
    const/4 v8, 0x0

    .line 103
    .local v8, size:Ljava/lang/String;
    const/4 v9, 0x0

    .line 104
    .local v9, subMenuButton:Lcom/lge/camera/components/RotateImageButton;
    const/4 v5, 0x1

    .line 105
    .local v5, needChange:Z
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, v11

    .local v4, len:I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 106
    aget-object v14, v11, v3

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-static {v8}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableMmsResolution(Ljava/lang/String;)Z

    move-result v2

    .line 108
    .local v2, available:Z
    if-eqz v2, :cond_3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 109
    const/4 v5, 0x0

    .line 110
    :cond_3
    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getSubMenuIds()[I

    move-result-object v14

    aget v14, v14, v3

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #subMenuButton:Lcom/lge/camera/components/RotateImageButton;
    check-cast v9, Lcom/lge/camera/components/RotateImageButton;

    .line 111
    .restart local v9       #subMenuButton:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v9, v2}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    .end local v2           #available:Z
    :cond_4
    if-eqz v5, :cond_5

    .line 115
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getMmsResolutions()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v7, v14, v15

    .line 116
    invoke-virtual {v12, v7}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 117
    if-gez v6, :cond_5

    const/4 v6, 0x0

    .line 129
    .end local v3           #i:I
    .end local v4           #len:I
    .end local v5           #needChange:Z
    .end local v8           #size:Ljava/lang/String;
    .end local v9           #subMenuButton:Lcom/lge/camera/components/RotateImageButton;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->setSelected(II)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    goto/16 :goto_0

    .line 122
    :cond_6
    const/4 v9, 0x0

    .line 123
    .restart local v9       #subMenuButton:Lcom/lge/camera/components/RotateImageButton;
    const/4 v3, 0x0

    .restart local v3       #i:I
    array-length v4, v11

    .restart local v4       #len:I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 124
    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getSubMenuIds()[I

    move-result-object v14

    aget v14, v14, v3

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #subMenuButton:Lcom/lge/camera/components/RotateImageButton;
    check-cast v9, Lcom/lge/camera/components/RotateImageButton;

    .line 125
    .restart local v9       #subMenuButton:Lcom/lge/camera/components/RotateImageButton;
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
