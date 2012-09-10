.class Lcom/lge/camera/CamcorderMediator$Heatingwarning;
.super Landroid/os/Handler;
.source "CamcorderMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CamcorderMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Heatingwarning"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method private constructor <init>(Lcom/lge/camera/CamcorderMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/lge/camera/CamcorderMediator$Heatingwarning;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/CamcorderMediator;Lcom/lge/camera/CamcorderMediator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/lge/camera/CamcorderMediator$Heatingwarning;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 861
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 876
    :goto_0
    return-void

    .line 863
    :pswitch_0
    const-string v0, "CameraApp"

    const-string v1, "MSG_SHOW "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$Heatingwarning;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->ShowHeatingwarning()V

    goto :goto_0

    .line 867
    :pswitch_1
    const-string v0, "CameraApp"

    const-string v1, "MSG_START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$Heatingwarning;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->StartHeatingwarning()V

    goto :goto_0

    .line 871
    :pswitch_2
    const-string v0, "CameraApp"

    const-string v1, "MSG_STOP"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$Heatingwarning;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->StopHeatingwarning()V

    goto :goto_0

    .line 861
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
