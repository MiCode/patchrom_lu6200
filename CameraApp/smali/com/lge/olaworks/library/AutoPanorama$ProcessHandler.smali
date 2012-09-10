.class Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;
.super Landroid/os/Handler;
.source "AutoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/library/AutoPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/olaworks/library/AutoPanorama;


# direct methods
.method private constructor <init>(Lcom/lge/olaworks/library/AutoPanorama;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/olaworks/library/AutoPanorama;Lcom/lge/olaworks/library/AutoPanorama$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;-><init>(Lcom/lge/olaworks/library/AutoPanorama;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, -0x1

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, ret:I
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;-><init>()V

    .line 55
    .local v0, info:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-static {v0}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->getStatus(Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;)I

    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    iget v2, v0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 60
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    #getter for: Lcom/lge/olaworks/library/AutoPanorama;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/olaworks/library/AutoPanorama;->access$100(Lcom/lge/olaworks/library/AutoPanorama;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 61
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hb mCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v4, v4, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v2, v2, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v2, v2, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onSynthesisProgressUpdate(I)V

    goto :goto_0

    .line 66
    :cond_1
    iget v2, v0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 67
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v2, v2, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-interface {v2, v4}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onSynthesisProgressUpdate(I)V

    .line 68
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    #calls: Lcom/lge/olaworks/library/AutoPanorama;->prepareOutput()I
    invoke-static {v2}, Lcom/lge/olaworks/library/AutoPanorama;->access$200(Lcom/lge/olaworks/library/AutoPanorama;)I

    goto :goto_0

    .line 70
    :cond_2
    iget v2, v0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    iget v2, v0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v2, v2, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-interface {v2, v4}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onSynthesisProgressUpdate(I)V

    goto :goto_0

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v2, v2, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-interface {v2, v4}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onSynthesisProgressUpdate(I)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v2, v2, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onComplete([B)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
