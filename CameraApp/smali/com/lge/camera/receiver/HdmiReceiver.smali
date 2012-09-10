.class public Lcom/lge/camera/receiver/HdmiReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "HdmiReceiver.java"


# instance fields
.field public final DualDisplayConnectedEvent:Ljava/lang/String;

.field public final HDMICableConnectedEvent:Ljava/lang/String;

.field public final HDMICableConnectedEventForOMAP:Ljava/lang/String;

.field public final HDMICableConnectedEventFornVidia:Ljava/lang/String;

.field public final HDMICableDisconnectedEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    .line 15
    const-string v0, "android.intent.action.HDMI_PLUG"

    iput-object v0, p0, Lcom/lge/camera/receiver/HdmiReceiver;->HDMICableConnectedEventForOMAP:Ljava/lang/String;

    .line 16
    const-string v0, "HDMI_CABLE_CONNECTED"

    iput-object v0, p0, Lcom/lge/camera/receiver/HdmiReceiver;->HDMICableConnectedEvent:Ljava/lang/String;

    .line 17
    const-string v0, "HDMI_CABLE_DISCONNECTED"

    iput-object v0, p0, Lcom/lge/camera/receiver/HdmiReceiver;->HDMICableDisconnectedEvent:Ljava/lang/String;

    .line 18
    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    iput-object v0, p0, Lcom/lge/camera/receiver/HdmiReceiver;->HDMICableConnectedEventFornVidia:Ljava/lang/String;

    .line 20
    const-string v0, "android.intent.action.DUALDISPLAY"

    iput-object v0, p0, Lcom/lge/camera/receiver/HdmiReceiver;->DualDisplayConnectedEvent:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private DualDisplayConnectedAction()V
    .locals 3

    .prologue
    .line 84
    const-string v1, "CameraApp"

    const-string v2, "DualDisplayConnectedAction"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "CameraApp"

    const-string v2, "It can support HDMI/MHL!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/properties/ProjectVariables;->convertErrorCannotUseHDMI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, strErrorCannotUseDDmode:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private DualDisplayDisconnectedAction()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "CameraApp"

    const-string v1, "DualDisplayDisconnectedAction"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :cond_0
    return-void
.end method

.method private HdmiConnectedAction()V
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "CameraApp"

    const-string v2, "It can support HDMI/MHL!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/properties/ProjectVariables;->convertErrorCannotUseHDMI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, strErrorCannotUseHDMI:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private HdmiDisconnectedAction()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "CameraApp"

    const-string v1, "It can support HDMI/MHL!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    const-string v2, "CameraApp"

    const-string v3, "mHdmiReciever RECEIVER IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v2, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    const-string v2, "CameraApp"

    const-string v3, "HDMICableConnectedEvent IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->HdmiConnectedAction()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v2, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    const-string v2, "CameraApp"

    const-string v3, "HDMICable DisconnectedEvent IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->HdmiDisconnectedAction()V

    goto :goto_0

    .line 39
    :cond_2
    const-string v2, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    const-string v2, "CameraApp"

    const-string v3, "HDMICableConnectedEvent IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 42
    .local v1, state:I
    if-ne v1, v5, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->HdmiConnectedAction()V

    goto :goto_0

    .line 45
    .end local v1           #state:I
    :cond_3
    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 46
    const-string v2, "CameraApp"

    const-string v3, "HDMICableConnectedEventFornVidia IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 48
    .restart local v1       #state:I
    if-ne v1, v5, :cond_4

    .line 49
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->HdmiConnectedAction()V

    goto :goto_0

    .line 50
    :cond_4
    if-nez v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->HdmiDisconnectedAction()V

    goto :goto_0

    .line 53
    .end local v1           #state:I
    :cond_5
    const-string v2, "android.intent.action.DUALDISPLAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 54
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 55
    .local v1, state:Z
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dual Display Intent received, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-eqz v1, :cond_6

    .line 57
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->DualDisplayConnectedAction()V

    goto :goto_0

    .line 59
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->DualDisplayDisconnectedAction()V

    goto :goto_0

    .line 62
    .end local v1           #state:Z
    :cond_7
    const-string v2, "CameraApp"

    const-string v3, "other HDMI RCVR IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
