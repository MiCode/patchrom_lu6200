.class Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CameraHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpMenuMediaBroadCastReceiver"
.end annotation


# instance fields
.field mHelpMenu:Lcom/lge/camera/CameraHelp;

.field final synthetic this$0:Lcom/lge/camera/CameraHelp;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CameraHelp;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;->this$0:Lcom/lge/camera/CameraHelp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 195
    check-cast p2, Lcom/lge/camera/CameraHelp;

    .end local p2
    iput-object p2, p0, Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;->mHelpMenu:Lcom/lge/camera/CameraHelp;

    .line 196
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
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

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;->mHelpMenu:Lcom/lge/camera/CameraHelp;

    invoke-virtual {v2}, Lcom/lge/camera/CameraHelp;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "HelpMenuMediaBroadCastReceiver Exception : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
