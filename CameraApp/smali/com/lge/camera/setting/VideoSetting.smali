.class public Lcom/lge/camera/setting/VideoSetting;
.super Lcom/lge/camera/setting/Setting;
.source "VideoSetting.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "mediator"
    .parameter "context"
    .parameter "configName"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/setting/Setting;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/lge/camera/setting/VideoSetting;->loadSetting(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getPreviewSizeOnDevice(I)[I
    .locals 6
    .parameter "index"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoSetting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_preview_size_on_device"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 26
    .local v1, listPref:Lcom/lge/camera/setting/ListPreference;
    const/4 v2, 0x0

    .line 28
    .local v2, size:[I
    :try_start_0
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 29
    .local v3, values:[Ljava/lang/CharSequence;
    aget-object v4, v3, p1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 35
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_0
    return-object v2

    .line 30
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const-string v4, "CameraApp"

    const-string v5, "listPref is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadSetting(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 16
    const-string v0, "CameraApp"

    const-string v1, "Load configuration."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public saveSetting(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    const-string v0, "CameraApp"

    const-string v1, "Save configuration."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
