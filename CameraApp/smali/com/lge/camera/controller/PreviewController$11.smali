.class Lcom/lge/camera/controller/PreviewController$11;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1221
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getDeviceRetryCount()I

    move-result v3

    .line 1222
    .local v3, tryCount:I
    if-nez v3, :cond_2

    .line 1224
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v6, 0x0

    #setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z
    invoke-static {v5, v6}, Lcom/lge/camera/controller/PreviewController;->access$102(Lcom/lge/camera/controller/PreviewController;Z)Z

    .line 1225
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    #calls: Lcom/lge/camera/controller/PreviewController;->ensureCameraDevice()V
    invoke-static {v5}, Lcom/lge/camera/controller/PreviewController;->access$200(Lcom/lge/camera/controller/PreviewController;)V
    :try_end_0
    .catch Lcom/lge/camera/exception/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1230
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    #getter for: Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v5}, Lcom/lge/camera/controller/PreviewController;->access$300(Lcom/lge/camera/controller/PreviewController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/lge/camera/exception/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1235
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 1283
    :cond_0
    :goto_1
    return-void

    .line 1231
    :catch_0
    move-exception v2

    .line 1232
    .local v2, ie:Ljava/lang/InterruptedException;
    const-string v5, "CameraApp"

    const-string v6, "InterruptedException : "

    invoke-static {v5, v6, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1233
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v6, 0x1

    #setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z
    invoke-static {v5, v6}, Lcom/lge/camera/controller/PreviewController;->access$102(Lcom/lge/camera/controller/PreviewController;Z)Z
    :try_end_2
    .catch Lcom/lge/camera/exception/CameraHardwareException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1236
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1237
    .local v0, e:Lcom/lge/camera/exception/CameraHardwareException;
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    #setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z
    invoke-static {v5, v8}, Lcom/lge/camera/controller/PreviewController;->access$102(Lcom/lge/camera/controller/PreviewController;Z)Z

    .line 1238
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    new-instance v6, Lcom/lge/camera/controller/PreviewController$11$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/controller/PreviewController$11$1;-><init>(Lcom/lge/camera/controller/PreviewController$11;)V

    invoke-virtual {v5, v6}, Lcom/lge/camera/controller/PreviewController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1244
    const-string v5, "CameraApp"

    const-string v6, "CameraHardwareException : "

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1247
    .end local v0           #e:Lcom/lge/camera/exception/CameraHardwareException;
    .end local v3           #tryCount:I
    .local v4, tryCount:I
    :goto_2
    add-int/lit8 v3, v4, -0x1

    .end local v4           #tryCount:I
    .restart local v3       #tryCount:I
    if-lez v4, :cond_0

    .line 1249
    :try_start_3
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v6, 0x0

    #setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z
    invoke-static {v5, v6}, Lcom/lge/camera/controller/PreviewController;->access$102(Lcom/lge/camera/controller/PreviewController;Z)Z

    .line 1250
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    #calls: Lcom/lge/camera/controller/PreviewController;->ensureCameraDevice()V
    invoke-static {v5}, Lcom/lge/camera/controller/PreviewController;->access$200(Lcom/lge/camera/controller/PreviewController;)V
    :try_end_3
    .catch Lcom/lge/camera/exception/CameraHardwareException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1255
    :try_start_4
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    #getter for: Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v5}, Lcom/lge/camera/controller/PreviewController;->access$300(Lcom/lge/camera/controller/PreviewController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/lge/camera/exception/CameraHardwareException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1260
    :goto_3
    :try_start_5
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 1261
    const/4 v3, 0x0

    move v4, v3

    .line 1280
    .end local v3           #tryCount:I
    .restart local v4       #tryCount:I
    goto :goto_2

    .line 1256
    .end local v4           #tryCount:I
    .restart local v3       #tryCount:I
    :catch_2
    move-exception v2

    .line 1257
    .restart local v2       #ie:Ljava/lang/InterruptedException;
    const-string v5, "CameraApp"

    const-string v6, "InterruptedException : "

    invoke-static {v5, v6, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1258
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v6, 0x1

    #setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z
    invoke-static {v5, v6}, Lcom/lge/camera/controller/PreviewController;->access$102(Lcom/lge/camera/controller/PreviewController;Z)Z
    :try_end_5
    .catch Lcom/lge/camera/exception/CameraHardwareException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 1262
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 1263
    .restart local v0       #e:Lcom/lge/camera/exception/CameraHardwareException;
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    #setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z
    invoke-static {v5, v8}, Lcom/lge/camera/controller/PreviewController;->access$102(Lcom/lge/camera/controller/PreviewController;Z)Z

    .line 1264
    if-gtz v3, :cond_1

    .line 1265
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    new-instance v6, Lcom/lge/camera/controller/PreviewController$11$2;

    invoke-direct {v6, p0}, Lcom/lge/camera/controller/PreviewController$11$2;-><init>(Lcom/lge/camera/controller/PreviewController$11;)V

    invoke-virtual {v5, v6}, Lcom/lge/camera/controller/PreviewController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1273
    :cond_1
    const-wide/16 v5, 0x1f4

    :try_start_6
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1279
    :goto_4
    const-string v5, "CameraApp"

    const-string v6, "CameraHardwareException : "

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v3

    .line 1280
    .end local v3           #tryCount:I
    .restart local v4       #tryCount:I
    goto :goto_2

    .line 1274
    .end local v4           #tryCount:I
    .restart local v3       #tryCount:I
    :catch_4
    move-exception v1

    .line 1276
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .end local v0           #e:Lcom/lge/camera/exception/CameraHardwareException;
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_2
    move v4, v3

    .end local v3           #tryCount:I
    .restart local v4       #tryCount:I
    goto :goto_2
.end method
