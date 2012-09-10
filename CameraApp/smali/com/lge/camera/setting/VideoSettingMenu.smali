.class public abstract Lcom/lge/camera/setting/VideoSettingMenu;
.super Lcom/lge/camera/setting/SettingMenu;
.source "VideoSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V
    .locals 1
    .parameter "mediator"
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/setting/SettingMenu;-><init>(Lcom/lge/camera/Mediator;)V

    .line 18
    iput-object p3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 19
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p0}, Lcom/lge/camera/setting/Setting;->addObserver(Ljava/util/Observer;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getMediator()Lcom/lge/camera/CamcorderMediator;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method

.method public bridge synthetic getSetting()Lcom/lge/camera/setting/Setting;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoSettingMenu;->getSetting()Lcom/lge/camera/setting/VideoSetting;

    move-result-object v0

    return-object v0
.end method

.method public getSetting()Lcom/lge/camera/setting/VideoSetting;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    check-cast v0, Lcom/lge/camera/setting/VideoSetting;

    return-object v0
.end method

.method protected initMenu()V
    .locals 12

    .prologue
    .line 27
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v4, 0x0

    .line 33
    .local v4, j:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    .line 35
    const/4 v3, 0x4

    .line 36
    .local v3, index:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v7, removeIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x5

    :goto_0
    iget-object v10, p0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v10}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 39
    iget-object v10, p0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v10, v2}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 40
    .local v5, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v5, :cond_1

    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 44
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 46
    .local v9, values:[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "key_camera_anti_banding"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v10

    const/4 v11, 0x7

    if-eq v10, v11, :cond_2

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 55
    new-instance v6, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v3, v10}, Lcom/lge/camera/setting/SettingMenuItem;-><init>(ILjava/lang/String;)V

    .line 56
    .local v6, parentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    .line 57
    .local v8, selectedPos:I
    if-gez v8, :cond_3

    const/4 v8, 0x0

    .line 58
    :cond_3
    invoke-virtual {v6, v8}, Lcom/lge/camera/setting/SettingMenuItem;->setSelectedChildPosition(I)V

    .line 59
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v10

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v6, v10}, Lcom/lge/camera/setting/SettingMenuItem;->setIconResource(I)V

    .line 60
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/lge/camera/setting/SettingMenuItem;->setCommand(Ljava/lang/String;)V

    .line 61
    iget-object v10, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v4, 0x0

    :goto_2
    array-length v10, v1

    if-ge v4, v10, :cond_0

    .line 64
    new-instance v0, Lcom/lge/camera/setting/SettingMenuItem;

    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v4, v10}, Lcom/lge/camera/setting/SettingMenuItem;-><init>(ILjava/lang/String;)V

    .line 65
    .local v0, childMenu:Lcom/lge/camera/setting/SettingMenuItem;
    aget-object v10, v9, v4

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/lge/camera/setting/SettingMenuItem;->setParameterValue(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/lge/camera/setting/SettingMenuItem;->setCommand(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v6, v0}, Lcom/lge/camera/setting/SettingMenuItem;->addChild(Lcom/lge/camera/setting/SettingMenuItem;)V

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 71
    .end local v0           #childMenu:Lcom/lge/camera/setting/SettingMenuItem;
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v5           #listPref:Lcom/lge/camera/setting/ListPreference;
    .end local v6           #parentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    .end local v8           #selectedPos:I
    .end local v9           #values:[Ljava/lang/CharSequence;
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 72
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    :goto_3
    if-ltz v2, :cond_5

    .line 73
    iget-object v11, p0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/lge/camera/setting/PreferenceGroup;->removePreference(I)V

    .line 72
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 76
    :cond_5
    return-void
.end method
