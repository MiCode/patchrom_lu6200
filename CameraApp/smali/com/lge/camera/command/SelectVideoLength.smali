.class public Lcom/lge/camera/command/SelectVideoLength;
.super Lcom/lge/camera/command/Command;
.source "SelectVideoLength.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 11
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 15
    const-string v0, "CameraApp"

    const-string v1, "SelectVideoLength"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->showDialogPopup(I)V

    .line 17
    return-void
.end method
