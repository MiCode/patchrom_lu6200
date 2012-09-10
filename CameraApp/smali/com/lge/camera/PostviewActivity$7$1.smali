.class Lcom/lge/camera/PostviewActivity$7$1;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/PostviewActivity$7;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$7$1;->this$1:Lcom/lge/camera/PostviewActivity$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$7$1;->this$1:Lcom/lge/camera/PostviewActivity$7;

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 1577
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$7$1;->this$1:Lcom/lge/camera/PostviewActivity$7;

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewActivity;->startTimeMachineShotAnimation()V

    .line 1578
    return-void
.end method
