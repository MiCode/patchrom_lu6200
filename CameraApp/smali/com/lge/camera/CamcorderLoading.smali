.class public Lcom/lge/camera/CamcorderLoading;
.super Landroid/app/Activity;
.source "CamcorderLoading.java"


# instance fields
.field private mCheckCameraOut:Ljava/lang/Runnable;

.field private mHandler:Lcom/lge/camera/util/MainHandler;

.field private mLoadingComplete:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    new-instance v0, Lcom/lge/camera/util/MainHandler;

    invoke-direct {v0}, Lcom/lge/camera/util/MainHandler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CamcorderLoading;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 24
    new-instance v0, Lcom/lge/camera/CamcorderLoading$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/CamcorderLoading$1;-><init>(Lcom/lge/camera/CamcorderLoading;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderLoading;->mLoadingComplete:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/lge/camera/CamcorderLoading$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/CamcorderLoading$2;-><init>(Lcom/lge/camera/CamcorderLoading;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderLoading;->mCheckCameraOut:Ljava/lang/Runnable;

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->checkEnteringTime(Z)V

    .line 20
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMLOADING_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMLOADING_INSTANCE_COUNT:I

    .line 21
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct CAMLOADING app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMLOADING_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/CamcorderLoading;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/CamcorderLoading;->mCheckCameraOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/CamcorderLoading;)Lcom/lge/camera/util/MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/CamcorderLoading;->mHandler:Lcom/lge/camera/util/MainHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/CamcorderLoading;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/CamcorderLoading;->mLoadingComplete:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 121
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMLOADING_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMLOADING_INSTANCE_COUNT:I

    .line 122
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy CAMLOADING app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMLOADING_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 124
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 77
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useRootWindowLoading()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/lge/camera/util/Common;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string v2, "CameraApp"

    const-string v3, "CamcorderLoading:onCreate()-end, checkEnterApplication fail."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkCameraOut(Landroid/app/Activity;)V

    .line 74
    :goto_1
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "CameraApp"

    const-string v3, "CamcorderLoading:onCreate() InterruptedException "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOffAnimation()V

    .line 61
    :cond_1
    invoke-static {p0}, Lcom/lge/camera/util/Common;->showLoadingWindow(Landroid/app/Activity;)V

    .line 62
    iget-object v2, p0, Lcom/lge/camera/CamcorderLoading;->mLoadingComplete:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 65
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOffAnimation()V

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderLoading;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 69
    .local v1, window:Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/camera/CamcorderLoading;->requestWindowFeature(I)Z

    .line 70
    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 72
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/lge/camera/CamcorderLoading;->setContentView(I)V

    .line 73
    const-string v2, "CameraApp"

    const-string v3, "onCreate()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "CameraApp"

    const-string v1, "TIME_CHECK CamLoading onDestroy()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useRootWindowLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/lge/camera/util/Common;->deleteLoadingWindow()V

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CamcorderLoading;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 116
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "CameraApp"

    const-string v1, "TIME_CHECK CamLoading onPause()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 105
    const-string v0, "CameraApp"

    const-string v1, "onPause()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 82
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK CamLoading onResume()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/CamcorderLoading$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/CamcorderLoading$3;-><init>(Lcom/lge/camera/CamcorderLoading;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    .local v0, checkThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    const-string v1, "CameraApp"

    const-string v2, "onResume()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method
