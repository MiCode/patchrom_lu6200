.class Lcom/lge/camera/PostviewActivity$4;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$4;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 588
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$4;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 589
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$4;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->getActivityOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 592
    :cond_0
    return-void
.end method
