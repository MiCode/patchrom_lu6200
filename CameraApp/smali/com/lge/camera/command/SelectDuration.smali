.class public Lcom/lge/camera/command/SelectDuration;
.super Lcom/lge/camera/command/Command;
.source "SelectDuration.java"


# instance fields
.field recTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/SelectDuration;->recTimeText:Landroid/widget/TextView;

    .line 17
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/SelectDuration;->execute(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 27
    .local v0, con:Z
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_preview_size_on_device"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    .line 29
    .local v1, videoSizePrefIndex:I
    iget-object v2, p0, Lcom/lge/camera/command/SelectDuration;->recTimeText:Landroid/widget/TextView;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/command/SelectDuration;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/command/SelectDuration;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const v3, 0x7f0900a9

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/camera/command/SelectDuration;->recTimeText:Landroid/widget/TextView;

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v3, Lcom/lge/camera/command/SelectDuration$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/lge/camera/command/SelectDuration$1;-><init>(Lcom/lge/camera/command/SelectDuration;IZ)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {p0}, Lcom/lge/camera/command/SelectDuration;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/camera/controller/SettingController;->setMmsLimit(Z)V

    .line 62
    return-void
.end method
