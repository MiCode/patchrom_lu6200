.class Lcom/lge/camera/PostviewActivity$9;
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
    .line 1992
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$9;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$9;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$1200(Lcom/lge/camera/PostviewActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2005
    :cond_0
    :goto_0
    return-void

    .line 1996
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "Share Button clicked."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$9;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewActivity;->checkPauseAndAutoReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$9;->this$0:Lcom/lge/camera/PostviewActivity;

    #calls: Lcom/lge/camera/PostviewActivity;->setTimeMachineBeforeOpenPopup()V
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$1300(Lcom/lge/camera/PostviewActivity;)V

    .line 2001
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$9;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->makePostviewMenuItems(I)V

    .line 2002
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$9;->this$0:Lcom/lge/camera/PostviewActivity;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->showDialog(I)V

    .line 2003
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$9;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    goto :goto_0
.end method
