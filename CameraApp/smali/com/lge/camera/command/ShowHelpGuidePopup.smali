.class public Lcom/lge/camera/command/ShowHelpGuidePopup;
.super Lcom/lge/camera/command/Command;
.source "ShowHelpGuidePopup.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 14
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowHelpGuidePopup;->execute(Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 6
    .parameter "arg"

    .prologue
    .line 23
    const-string v3, "CameraApp"

    const-string v4, "ShowHelpGuidePopup - start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 25
    check-cast v0, Landroid/os/Bundle;

    .line 26
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "dialog_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 28
    .local v1, dialog_id:I
    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowHelpGuidePopup;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const-string v4, "key_help_guide"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, helpGuide:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "helpGuide = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz v2, :cond_0

    .line 32
    const-string v3, "hdr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    const/16 v1, 0x18

    .line 50
    .end local v2           #helpGuide:Ljava/lang/String;
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 62
    :goto_1
    return-void

    .line 34
    .restart local v2       #helpGuide:Ljava/lang/String;
    :cond_1
    const-string v3, "panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    const/16 v1, 0x19

    goto :goto_0

    .line 36
    :cond_2
    const-string v3, "timemachine"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 37
    const/16 v1, 0x1a

    goto :goto_0

    .line 38
    :cond_3
    const-string v3, "continuous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 39
    const/16 v1, 0x1b

    goto :goto_0

    .line 40
    :cond_4
    const-string v3, "beauty_shot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 41
    const/16 v1, 0x1c

    goto :goto_0

    .line 42
    :cond_5
    const-string v3, "voice_photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 43
    const/16 v1, 0x1d

    goto :goto_0

    .line 44
    :cond_6
    const-string v3, "live_effect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const/16 v1, 0x1e

    goto :goto_0

    .line 58
    .end local v2           #helpGuide:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowHelpGuidePopup;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    goto :goto_1

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
