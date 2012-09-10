.class public Lcom/lge/camera/setting/PreferenceGroup;
.super Lcom/lge/camera/setting/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public addChild(Lcom/lge/camera/setting/CameraPreference;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/camera/setting/CameraPreference;->setSharedPreferenceName(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 64
    iget-object v3, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/CameraPreference;

    .line 65
    .local v2, pref:Lcom/lge/camera/setting/CameraPreference;
    instance-of v3, v2, Lcom/lge/camera/setting/ListPreference;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 66
    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    .line 67
    .local v1, listPref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    .end local v1           #listPref:Lcom/lge/camera/setting/ListPreference;
    .end local v2           #pref:Lcom/lge/camera/setting/CameraPreference;
    :goto_0
    return-object v1

    .line 70
    .restart local v2       #pref:Lcom/lge/camera/setting/CameraPreference;
    :cond_1
    instance-of v3, v2, Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 71
    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    .end local v2           #pref:Lcom/lge/camera/setting/CameraPreference;
    invoke-virtual {v2, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 73
    .restart local v1       #listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 78
    .end local v1           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findPreferenceIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, i:I
    iget-object v4, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/CameraPreference;

    .line 93
    .local v3, pref:Lcom/lge/camera/setting/CameraPreference;
    instance-of v4, v3, Lcom/lge/camera/setting/ListPreference;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 94
    check-cast v2, Lcom/lge/camera/setting/ListPreference;

    .line 95
    .local v2, listPref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    .end local v2           #listPref:Lcom/lge/camera/setting/ListPreference;
    .end local v3           #pref:Lcom/lge/camera/setting/CameraPreference;
    :cond_0
    return v0

    .line 98
    .restart local v3       #pref:Lcom/lge/camera/setting/CameraPreference;
    :cond_1
    instance-of v4, v3, Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 99
    check-cast v3, Lcom/lge/camera/setting/PreferenceGroup;

    .end local v3           #pref:Lcom/lge/camera/setting/CameraPreference;
    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 100
    .restart local v2       #listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v2, :cond_0

    .line 104
    .end local v2           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(I)Lcom/lge/camera/setting/CameraPreference;
    .locals 1
    .parameter "index"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/CameraPreference;

    return-object v0
.end method

.method public getListPreference(I)Lcom/lge/camera/setting/ListPreference;
    .locals 2
    .parameter "index"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/CameraPreference;

    .line 83
    .local v0, pref:Lcom/lge/camera/setting/CameraPreference;
    instance-of v1, v0, Lcom/lge/camera/setting/ListPreference;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Lcom/lge/camera/setting/ListPreference;

    .line 88
    .end local v0           #pref:Lcom/lge/camera/setting/CameraPreference;
    :goto_0
    return-object v0

    .line 85
    .restart local v0       #pref:Lcom/lge/camera/setting/CameraPreference;
    :cond_0
    instance-of v1, v0, Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v1, :cond_1

    .line 86
    check-cast v0, Lcom/lge/camera/setting/PreferenceGroup;

    .end local v0           #pref:Lcom/lge/camera/setting/CameraPreference;
    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    goto :goto_0

    .line 88
    .restart local v0       #pref:Lcom/lge/camera/setting/CameraPreference;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadValue()V
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/CameraPreference;

    .line 52
    .local v1, pref:Lcom/lge/camera/setting/CameraPreference;
    invoke-virtual {v1}, Lcom/lge/camera/setting/CameraPreference;->reloadValue()V

    goto :goto_0

    .line 54
    .end local v1           #pref:Lcom/lge/camera/setting/CameraPreference;
    :cond_0
    return-void
.end method

.method public removePreference(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
