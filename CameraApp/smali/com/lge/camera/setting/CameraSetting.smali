.class public Lcom/lge/camera/setting/CameraSetting;
.super Lcom/lge/camera/setting/Setting;
.source "CameraSetting.java"


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
    invoke-virtual {p0, p2}, Lcom/lge/camera/setting/CameraSetting;->loadSetting(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public loadSetting(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    :cond_0
    return-void
.end method

.method public saveSetting(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    :cond_0
    return-void
.end method
