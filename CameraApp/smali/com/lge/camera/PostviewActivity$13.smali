.class Lcom/lge/camera/PostviewActivity$13;
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
    .line 2052
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 2054
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$1200(Lcom/lge/camera/PostviewActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2078
    :cond_0
    :goto_0
    return-void

    .line 2055
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "Delete clicked."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->checkPauseAndAutoReview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2059
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 2060
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->getCountThumbnailSelected()I

    move-result v0

    .line 2061
    .local v0, nSelectedCount:I
    if-lez v0, :cond_3

    .line 2062
    if-ne v0, v4, :cond_2

    .line 2063
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1, v3}, Lcom/lge/camera/PostviewActivity;->showDialog(I)V

    .line 2067
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->saveSelectedIndexs()V

    goto :goto_0

    .line 2065
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewActivity;->showDialog(I)V

    goto :goto_1

    .line 2069
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$700(Lcom/lge/camera/PostviewActivity;)I

    move-result v1

    if-nez v1, :cond_4

    .line 2070
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1, v3}, Lcom/lge/camera/PostviewActivity;->showDialog(I)V

    goto :goto_0

    .line 2071
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$1500(Lcom/lge/camera/PostviewActivity;)Lcom/lge/camera/postview/PostViewToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewToast;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    const v3, 0x7f0b0136

    invoke-virtual {v2, v3}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 2076
    .end local v0           #nSelectedCount:I
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$13;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1, v3}, Lcom/lge/camera/PostviewActivity;->showDialog(I)V

    goto :goto_0
.end method
