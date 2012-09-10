.class Lcom/lge/camera/CamLoading$1;
.super Ljava/lang/Object;
.source "CamLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CamLoading;
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
    .line 24
    iput-object p1, p0, Lcom/lge/camera/CamLoading$1;->this$0:Lcom/lge/camera/CamLoading;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/camera/CamLoading$1;->this$0:Lcom/lge/camera/CamLoading;

    invoke-virtual {v1}, Lcom/lge/camera/CamLoading;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.lge.camera.CameraApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    const-string v1, "com.lge.camera.ShowLoading"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    iget-object v1, p0, Lcom/lge/camera/CamLoading$1;->this$0:Lcom/lge/camera/CamLoading;

    invoke-virtual {v1, v0}, Lcom/lge/camera/CamLoading;->startActivity(Landroid/content/Intent;)V

    .line 31
    iget-object v1, p0, Lcom/lge/camera/CamLoading$1;->this$0:Lcom/lge/camera/CamLoading;

    invoke-virtual {v1}, Lcom/lge/camera/CamLoading;->finish()V

    .line 32
    return-void
.end method
