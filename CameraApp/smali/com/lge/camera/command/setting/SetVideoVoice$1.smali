.class Lcom/lge/camera/command/setting/SetVideoVoice$1;
.super Ljava/lang/Object;
.source "SetVideoVoice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetVideoVoice;->updateIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetVideoVoice;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetVideoVoice;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetVideoVoice$1;->this$0:Lcom/lge/camera/command/setting/SetVideoVoice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoVoice$1;->this$0:Lcom/lge/camera/command/setting/SetVideoVoice;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetVideoVoice;->access$000(Lcom/lge/camera/command/setting/SetVideoVoice;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoVoice$1;->this$0:Lcom/lge/camera/command/setting/SetVideoVoice;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetVideoVoice;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateAudioIndicator()V

    .line 31
    return-void
.end method
