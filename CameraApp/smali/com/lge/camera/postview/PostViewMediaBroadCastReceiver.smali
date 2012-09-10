.class public Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PostViewMediaBroadCastReceiver.java"


# instance fields
.field mPostviewActivity:Lcom/lge/camera/PostviewActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    check-cast p1, Lcom/lge/camera/PostviewActivity;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->mPostviewActivity:Lcom/lge/camera/PostviewActivity;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, action:Ljava/lang/String;
    :try_start_0
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    .line 31
    iget-object v2, p0, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->mPostviewActivity:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "PostViewMediaBroadCastReceiver Exception : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
