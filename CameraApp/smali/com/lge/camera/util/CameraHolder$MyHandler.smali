.class Lcom/lge/camera/util/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/util/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/util/CameraHolder;


# direct methods
.method constructor <init>(Lcom/lge/camera/util/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/camera/util/CameraHolder$MyHandler;->this$0:Lcom/lge/camera/util/CameraHolder;

    .line 79
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder$MyHandler;->this$0:Lcom/lge/camera/util/CameraHolder;

    #getter for: Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J
    invoke-static {v0}, Lcom/lge/camera/util/CameraHolder;->access$000(Lcom/lge/camera/util/CameraHolder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    const-string v0, "CameraApp"

    const-string v1, "we don\'t need to release, return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder$MyHandler;->this$0:Lcom/lge/camera/util/CameraHolder;

    #calls: Lcom/lge/camera/util/CameraHolder;->releaseCamera()Z
    invoke-static {v0}, Lcom/lge/camera/util/CameraHolder;->access$100(Lcom/lge/camera/util/CameraHolder;)Z

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
