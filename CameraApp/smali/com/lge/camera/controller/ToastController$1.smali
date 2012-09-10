.class Lcom/lge/camera/controller/ToastController$1;
.super Ljava/lang/Object;
.source "ToastController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ToastController;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ToastController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/camera/controller/ToastController$1;->this$0:Lcom/lge/camera/controller/ToastController;

    iput-object p2, p0, Lcom/lge/camera/controller/ToastController$1;->val$message:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 48
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$1;->this$0:Lcom/lge/camera/controller/ToastController;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController$1;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$1;->this$0:Lcom/lge/camera/controller/ToastController;

    #getter for: Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/camera/controller/ToastController;->access$100(Lcom/lge/camera/controller/ToastController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController$1;->this$0:Lcom/lge/camera/controller/ToastController;

    #getter for: Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/lge/camera/controller/ToastController;->access$000(Lcom/lge/camera/controller/ToastController;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 51
    .local v0, rtnValue:Z
    if-nez v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$1;->this$0:Lcom/lge/camera/controller/ToastController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 54
    :cond_0
    return-void
.end method
