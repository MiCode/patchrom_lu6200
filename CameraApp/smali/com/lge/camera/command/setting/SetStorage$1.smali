.class Lcom/lge/camera/command/setting/SetStorage$1;
.super Ljava/lang/Object;
.source "SetStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetStorage;->updateIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetStorage;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetStorage$1;->this$0:Lcom/lge/camera/command/setting/SetStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage$1;->this$0:Lcom/lge/camera/command/setting/SetStorage;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetStorage;->access$000(Lcom/lge/camera/command/setting/SetStorage;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage$1;->this$0:Lcom/lge/camera/command/setting/SetStorage;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetStorage;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 69
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage$1;->this$0:Lcom/lge/camera/command/setting/SetStorage;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetStorage;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateStorageIndicator()V

    .line 70
    return-void
.end method
