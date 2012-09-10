.class Lcom/lge/camera/controller/ToastController$2;
.super Ljava/lang/Object;
.source "ToastController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ToastController;

.field final synthetic val$hideDelayMillis:J

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ToastController;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    iput-object p2, p0, Lcom/lge/camera/controller/ToastController$2;->val$message:Ljava/lang/String;

    iput-wide p3, p0, Lcom/lge/camera/controller/ToastController$2;->val$hideDelayMillis:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    #getter for: Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/camera/controller/ToastController;->access$100(Lcom/lge/camera/controller/ToastController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    #getter for: Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/controller/ToastController;->access$000(Lcom/lge/camera/controller/ToastController;)Ljava/lang/Runnable;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/ToastController$2;->val$hideDelayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method
