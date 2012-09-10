.class Lcom/lge/camera/CamcorderLoading$3;
.super Ljava/lang/Object;
.source "CamcorderLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CamcorderLoading;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CamcorderLoading;


# direct methods
.method constructor <init>(Lcom/lge/camera/CamcorderLoading;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/camera/CamcorderLoading$3;->this$0:Lcom/lge/camera/CamcorderLoading;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/CamcorderLoading$3;->this$0:Lcom/lge/camera/CamcorderLoading;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderLoading;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const-string v0, "CameraApp"

    const-string v1, "onCreate()-end, checkEnterApplication "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/lge/camera/CamcorderLoading$3;->this$0:Lcom/lge/camera/CamcorderLoading;

    #getter for: Lcom/lge/camera/CamcorderLoading;->mHandler:Lcom/lge/camera/util/MainHandler;
    invoke-static {v0}, Lcom/lge/camera/CamcorderLoading;->access$100(Lcom/lge/camera/CamcorderLoading;)Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CamcorderLoading$3;->this$0:Lcom/lge/camera/CamcorderLoading;

    #getter for: Lcom/lge/camera/CamcorderLoading;->mCheckCameraOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/CamcorderLoading;->access$000(Lcom/lge/camera/CamcorderLoading;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CamcorderLoading$3;->this$0:Lcom/lge/camera/CamcorderLoading;

    #getter for: Lcom/lge/camera/CamcorderLoading;->mHandler:Lcom/lge/camera/util/MainHandler;
    invoke-static {v0}, Lcom/lge/camera/CamcorderLoading;->access$100(Lcom/lge/camera/CamcorderLoading;)Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CamcorderLoading$3;->this$0:Lcom/lge/camera/CamcorderLoading;

    #getter for: Lcom/lge/camera/CamcorderLoading;->mLoadingComplete:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/CamcorderLoading;->access$200(Lcom/lge/camera/CamcorderLoading;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
