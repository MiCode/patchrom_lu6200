.class public Lcom/lge/camera/util/MainHandler;
.super Landroid/os/Handler;
.source "MainHandler.java"


# instance fields
.field private mMediator:Lcom/lge/camera/Mediator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/MainHandler;->mMediator:Lcom/lge/camera/Mediator;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/MainHandler;->mMediator:Lcom/lge/camera/Mediator;

    .line 16
    iput-object p1, p0, Lcom/lge/camera/util/MainHandler;->mMediator:Lcom/lge/camera/Mediator;

    .line 17
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 22
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 34
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 35
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/util/MainHandler;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable()V

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
