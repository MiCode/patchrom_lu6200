.class Lcom/lge/camera/PostviewActivity$3$1;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/PostviewActivity$3;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$3$1;->this$1:Lcom/lge/camera/PostviewActivity$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$3$1;->this$1:Lcom/lge/camera/PostviewActivity$3;

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$3$1;->this$1:Lcom/lge/camera/PostviewActivity$3;

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$3$1;->this$1:Lcom/lge/camera/PostviewActivity$3;

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->setPostviewMainViewVisible(I)V

    .line 570
    :cond_0
    return-void
.end method
