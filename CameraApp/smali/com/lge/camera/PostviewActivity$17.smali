.class Lcom/lge/camera/PostviewActivity$17;
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
    .line 2132
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 2134
    const-string v1, "CameraApp"

    const-string v2, "Time machine sava clicked."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->checkPauseAndAutoReview()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2139
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 2140
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->getCountThumbnailSelected()I

    move-result v0

    .line 2141
    .local v0, nSelectedCount:I
    if-lez v0, :cond_2

    .line 2142
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, v2, Lcom/lge/camera/PostviewActivity;->saveButtonDone:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewActivity;->gallerySlideDownAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2144
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$1500(Lcom/lge/camera/PostviewActivity;)Lcom/lge/camera/postview/PostViewToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewToast;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2145
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    const v3, 0x7f0b0136

    invoke-virtual {v2, v3}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 2149
    .end local v0           #nSelectedCount:I
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1, v3}, Lcom/lge/camera/PostviewActivity;->displayCheckbox(Z)V

    .line 2150
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1, v3}, Lcom/lge/camera/PostviewActivity;->setMenuDim(Z)V

    .line 2151
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$17;->this$0:Lcom/lge/camera/PostviewActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewActivity;->updateReviewThumbnailButton(I)V

    goto :goto_0
.end method
