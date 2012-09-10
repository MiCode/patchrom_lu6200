.class Lcom/lge/camera/CamLoading$3;
.super Ljava/lang/Object;
.source "CamLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CamLoading;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CamLoading;


# direct methods
.method constructor <init>(Lcom/lge/camera/CamLoading;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/camera/CamLoading$3;->this$0:Lcom/lge/camera/CamLoading;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/camera/CamLoading$3;->this$0:Lcom/lge/camera/CamLoading;

    invoke-virtual {v0}, Lcom/lge/camera/CamLoading;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "CameraApp"

    const-string v1, "onCreate()-end, checkEnterApplication "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/lge/camera/CamLoading$3;->this$0:Lcom/lge/camera/CamLoading;

    #getter for: Lcom/lge/camera/CamLoading;->mHandler:Lcom/lge/camera/util/MainHandler;
    invoke-static {v0}, Lcom/lge/camera/CamLoading;->access$100(Lcom/lge/camera/CamLoading;)Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CamLoading$3;->this$0:Lcom/lge/camera/CamLoading;

    #getter for: Lcom/lge/camera/CamLoading;->mCheckCameraOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/CamLoading;->access$000(Lcom/lge/camera/CamLoading;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CamLoading$3;->this$0:Lcom/lge/camera/CamLoading;

    #getter for: Lcom/lge/camera/CamLoading;->mHandler:Lcom/lge/camera/util/MainHandler;
    invoke-static {v0}, Lcom/lge/camera/CamLoading;->access$100(Lcom/lge/camera/CamLoading;)Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CamLoading$3;->this$0:Lcom/lge/camera/CamLoading;

    #getter for: Lcom/lge/camera/CamLoading;->mLoadingComplete:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/CamLoading;->access$200(Lcom/lge/camera/CamLoading;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
