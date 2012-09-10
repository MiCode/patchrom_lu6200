.class public abstract Lcom/lge/camera/setting/SettingMenu;
.super Ljava/util/Observable;
.source "SettingMenu.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final DEFAULT_VIDEO_DURATION:I = 0x708

.field protected static final TAG:Ljava/lang/String; = "CameraApp"

.field public static final VIDEO_QUALITY_HIGH:Ljava/lang/String; = "high"

.field public static final VIDEO_QUALITY_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final YOUTUBE_VIDEO_DURATION:I = 0x258


# instance fields
.field protected currentMenuIndex:I

.field protected mBrightnessValue:I

.field protected mMediator:Lcom/lge/camera/Mediator;

.field protected mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected mSetting:Lcom/lge/camera/setting/Setting;

.field protected mZoomValue:I

.field protected menu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 29
    iput v0, p0, Lcom/lge/camera/setting/SettingMenu;->mZoomValue:I

    .line 30
    iput v0, p0, Lcom/lge/camera/setting/SettingMenu;->mBrightnessValue:I

    .line 33
    iput-object p1, p0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    .line 34
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuItem;->close()V

    .line 211
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 215
    :cond_0
    iput-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    .line 217
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v1, p0}, Lcom/lge/camera/setting/Setting;->deleteObserver(Ljava/util/Observer;)V

    .line 218
    iput-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 219
    return-void
.end method

.method public findMenuBySettingIndex(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 4
    .parameter "settingIndex"

    .prologue
    .line 49
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 50
    .local v1, menuCount:I
    const/4 v2, 0x0

    .line 51
    .local v2, menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 52
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    check-cast v2, Lcom/lge/camera/setting/SettingMenuItem;

    .line 53
    .restart local v2       #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuItem;->getSettingIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 58
    :cond_0
    return-object v2

    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method public getCurrentMenuIndex()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    return v0
.end method

.method public getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method public getMenu(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 2
    .parameter "key"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v1}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method public getMenuCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedChild(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    iget v0, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    return v0
.end method

.method public getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    iget v1, v1, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedChildIndex()I
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    iget v0, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    return v0
.end method

.method public abstract getSetting()Lcom/lge/camera/setting/Setting;
.end method

.method protected abstract initMenu()V
.end method

.method public setAllChidMenuEnabled(Ljava/lang/String;Z)V
    .locals 6
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 164
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 165
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 167
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v3

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 168
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5, p2}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public setCurrentMenu(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 70
    iget v0, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    if-eq v0, p1, :cond_0

    .line 71
    iput p1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    .line 73
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 74
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "key"
    .parameter "value"
    .parameter "enable"

    .prologue
    .line 127
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v5, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 128
    .local v2, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    .line 132
    .local v0, childMenuIndex:I
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v5}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v3, v5, -0x5

    .line 133
    .local v3, parentMenuIndex:I
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 136
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/SettingMenuItem;

    .line 138
    .local v4, parentMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v2, p2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 139
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 140
    :cond_2
    invoke-virtual {v4, v0}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    .line 141
    .local v1, childMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    iget-boolean v5, v1, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eq v5, p3, :cond_0

    .line 142
    iput-boolean p3, v1, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 143
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 144
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 150
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v2}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, -0x5

    .line 151
    .local v0, parentMenuIndex:I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    .line 156
    .local v1, parentMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    iget-boolean v2, v1, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eq v2, p2, :cond_0

    .line 157
    iput-boolean p2, v1, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 158
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 159
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0
.end method

.method public setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "key"
    .parameter "value"
    .parameter "saveSetting"

    .prologue
    .line 174
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 175
    .local v1, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v2, v4, -0x5

    .line 179
    .local v2, parentMenuIndex:I
    invoke-virtual {v1, p2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, childMenuIndex:I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 183
    if-ltz v0, :cond_0

    .line 186
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/SettingMenuItem;

    .line 187
    .local v3, parentMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    iget v4, v3, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v4, v0, :cond_0

    .line 188
    iput v0, v3, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 189
    if-eqz p3, :cond_2

    .line 190
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    add-int/lit8 v5, v2, 0x5

    invoke-virtual {v4, v5, v0}, Lcom/lge/camera/setting/Setting;->setSetting(II)Z

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 192
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0
.end method

.method public setSelectedChild(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    .line 97
    .local v0, currentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    iget v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v1, p1, :cond_0

    .line 98
    iput p1, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 99
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    iget v2, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/lge/camera/setting/Setting;->setSetting(II)Z

    .line 101
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 102
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 104
    const/4 v1, 0x1

    .line 106
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelectedChild(II)Z
    .locals 3
    .parameter "menuIndex"
    .parameter "index"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    .line 113
    .local v0, currentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    iget v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v1, p2, :cond_0

    .line 114
    iput p2, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 115
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    add-int/lit8 v2, p1, 0x5

    invoke-virtual {v1, v2, p2}, Lcom/lge/camera/setting/Setting;->setSetting(II)Z

    .line 117
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 118
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 120
    const/4 v1, 0x1

    .line 122
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    .line 200
    .local v1, parentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    add-int/lit8 v4, v0, 0x5

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/Setting;->getSetting(I)I

    move-result v2

    .line 201
    .local v2, settingIndex:I
    iput v2, v1, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v1           #parentMenu:Lcom/lge/camera/setting/SettingMenuItem;
    .end local v2           #settingIndex:I
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 204
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 205
    return-void
.end method
