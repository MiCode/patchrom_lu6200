.class Lcom/lge/camera/PostviewActivity$16;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 2120
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$16;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 2122
    const-string v0, "CameraApp"

    const-string v1, "MultiSelect clicked."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$16;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewActivity;->checkPauseAndAutoReview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2129
    :goto_0
    return-void

    .line 2126
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$16;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    .line 2127
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$16;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0, v2}, Lcom/lge/camera/PostviewActivity;->setMenuDim(Z)V

    .line 2128
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$16;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0, v2}, Lcom/lge/camera/PostviewActivity;->displayCheckbox(Z)V

    goto :goto_0
.end method
