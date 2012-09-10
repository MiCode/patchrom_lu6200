.class Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$3;
.super Ljava/lang/Object;
.source "CamcorderQuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->setMmsLimitUiSubmenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

.field final synthetic val$mmsVideo:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$3;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$3;->val$mmsVideo:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$3;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->access$200(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$3;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    iget-boolean v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$3;->val$mmsVideo:Z

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->setMmsLimitUiSubmenu(Z)V

    .line 84
    return-void
.end method
