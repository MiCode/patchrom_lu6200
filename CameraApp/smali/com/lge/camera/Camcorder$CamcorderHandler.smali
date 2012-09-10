.class Lcom/lge/camera/Camcorder$CamcorderHandler;
.super Landroid/os/Handler;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CamcorderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Camcorder;


# direct methods
.method private constructor <init>(Lcom/lge/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/lge/camera/Camcorder$CamcorderHandler;->this$0:Lcom/lge/camera/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/Camcorder;Lcom/lge/camera/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/lge/camera/Camcorder$CamcorderHandler;-><init>(Lcom/lge/camera/Camcorder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 628
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 630
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/Camcorder$CamcorderHandler;->this$0:Lcom/lge/camera/Camcorder;

    #getter for: Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;
    invoke-static {v0}, Lcom/lge/camera/Camcorder;->access$100(Lcom/lge/camera/Camcorder;)Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/lge/camera/Camcorder$CamcorderHandler;->this$0:Lcom/lge/camera/Camcorder;

    #getter for: Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;
    invoke-static {v0}, Lcom/lge/camera/Camcorder;->access$100(Lcom/lge/camera/Camcorder;)Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->showRequestedSizeLimit()V

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
