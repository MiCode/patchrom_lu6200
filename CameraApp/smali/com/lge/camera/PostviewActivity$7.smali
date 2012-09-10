.class Lcom/lge/camera/PostviewActivity$7;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->setCapturedImageClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;

.field final synthetic val$capturedImageView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    iput-object p2, p0, Lcom/lge/camera/PostviewActivity$7;->val$capturedImageView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1566
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v4}, Lcom/lge/camera/PostviewActivity;->getPostviewMenuState()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1567
    const-string v4, "CameraApp"

    const-string v5, "PostView menu state is NORMAL."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I
    invoke-static {v4}, Lcom/lge/camera/PostviewActivity;->access$700(Lcom/lge/camera/PostviewActivity;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1572
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    #setter for: Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I
    invoke-static {v4, v9}, Lcom/lge/camera/PostviewActivity;->access$702(Lcom/lge/camera/PostviewActivity;I)I

    .line 1574
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    new-instance v5, Lcom/lge/camera/PostviewActivity$7$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/PostviewActivity$7$1;-><init>(Lcom/lge/camera/PostviewActivity$7;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/camera/PostviewActivity;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 1581
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;
    invoke-static {v4}, Lcom/lge/camera/PostviewActivity;->access$800(Lcom/lge/camera/PostviewActivity;)Lcom/lge/camera/postview/ContShotThumbAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1582
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;
    invoke-static {v4}, Lcom/lge/camera/PostviewActivity;->access$800(Lcom/lge/camera/PostviewActivity;)Lcom/lge/camera/postview/ContShotThumbAdapter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lge/camera/postview/ContShotThumbAdapter;->setThumbnailVisible(Z)V

    .line 1585
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->val$capturedImageView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1586
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->val$capturedImageView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1588
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    const v5, 0x7f090030

    invoke-virtual {v4, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1589
    .local v2, contentLayout:Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 1590
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1592
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    const v5, 0x7f090032

    invoke-virtual {v4, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1593
    .local v0, clockAniView:Landroid/view/View;
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    const v5, 0x7f090033

    invoke-virtual {v4, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1595
    .local v1, clockBgView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v5, -0x1

    #calls: Lcom/lge/camera/PostviewActivity;->setCapturedImageView(Landroid/widget/ImageView;ZI)V
    invoke-static {v4, v1, v8, v5}, Lcom/lge/camera/PostviewActivity;->access$900(Lcom/lge/camera/PostviewActivity;Landroid/widget/ImageView;ZI)V

    .line 1596
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1597
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1598
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1600
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    const v5, 0x7f090036

    invoke-virtual {v4, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    .line 1601
    .local v3, g:Landroid/widget/Gallery;
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    #calls: Lcom/lge/camera/PostviewActivity;->setMultiShotGalleryVisieble(Landroid/widget/Gallery;)V
    invoke-static {v4, v3}, Lcom/lge/camera/PostviewActivity;->access$1000(Lcom/lge/camera/PostviewActivity;Landroid/widget/Gallery;)V

    .line 1602
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    #calls: Lcom/lge/camera/PostviewActivity;->setupPostview()V
    invoke-static {v4}, Lcom/lge/camera/PostviewActivity;->access$200(Lcom/lge/camera/PostviewActivity;)V

    .line 1603
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v9, :cond_5

    .line 1604
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    const v5, 0x7f02018f

    invoke-virtual {v4, v8, v5}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    goto/16 :goto_0

    .line 1606
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$7;->this$0:Lcom/lge/camera/PostviewActivity;

    const v5, 0x7f02018d

    invoke-virtual {v4, v8, v5}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    goto/16 :goto_0
.end method
