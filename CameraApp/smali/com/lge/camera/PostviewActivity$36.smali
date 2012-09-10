.class Lcom/lge/camera/PostviewActivity$36;
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
    .line 3955
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 3957
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v8, p0}, Lcom/lge/camera/PostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 3959
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    invoke-static {v8}, Lcom/lge/camera/PostviewActivity;->access$3000(Lcom/lge/camera/PostviewActivity;)I

    move-result v8

    if-gez v8, :cond_1

    .line 3960
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v8}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    .line 4002
    :cond_0
    :goto_0
    return-void

    .line 3965
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3966
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    const v9, 0x7f090036

    invoke-virtual {v8, v9}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    .line 3967
    .local v3, g:Landroid/widget/Gallery;
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    const v9, 0x7f090031

    invoke-virtual {v8, v9}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3968
    .local v0, aniView:Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    .line 3969
    :cond_2
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v8}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 3992
    .end local v0           #aniView:Landroid/widget/ImageView;
    .end local v3           #g:Landroid/widget/Gallery;
    :catch_0
    move-exception v2

    .line 3993
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "CameraApp"

    const-string v9, "ArrayIndexOutOfBoundsException!"

    invoke-static {v8, v9, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3994
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v8}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto :goto_0

    .line 3972
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v0       #aniView:Landroid/widget/ImageView;
    .restart local v3       #g:Landroid/widget/Gallery;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v8, v0}, Lcom/lge/camera/PostviewActivity;->setImageViewClear(Landroid/widget/ImageView;)V

    .line 3973
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v8}, Lcom/lge/camera/PostviewActivity;->getContShotThumbAdapter()Lcom/lge/camera/postview/ContShotThumbAdapter;

    move-result-object v4

    .line 3974
    .local v4, imageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;
    if-eqz v4, :cond_4

    iget-object v8, v4, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lge/camera/PostviewActivity;->access$3100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 3975
    iget-object v8, v4, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    invoke-static {v9}, Lcom/lge/camera/PostviewActivity;->access$3000(Lcom/lge/camera/PostviewActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 3976
    .local v1, bmpD:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3977
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lge/camera/PostviewActivity;->access$3100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    invoke-static {v9}, Lcom/lge/camera/PostviewActivity;->access$3000(Lcom/lge/camera/PostviewActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 3978
    .local v7, thumbRect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/widget/Gallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3979
    .local v5, lp_gallery:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3980
    .local v6, targetRect:Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iput v8, v6, Landroid/graphics/Rect;->left:I

    .line 3981
    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 3982
    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iput v8, v6, Landroid/graphics/Rect;->top:I

    .line 3983
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 3985
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6, v0}, Lcom/lge/camera/PostviewActivity;->translateTimeMachineShotAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 3986
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v9, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    invoke-static {v9}, Lcom/lge/camera/PostviewActivity;->access$3000(Lcom/lge/camera/PostviewActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/PostviewActivity;->setSelectedIndex(I)V

    .line 3987
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-static {v8}, Lcom/lge/camera/PostviewActivity;->access$3010(Lcom/lge/camera/PostviewActivity;)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 3995
    .end local v0           #aniView:Landroid/widget/ImageView;
    .end local v1           #bmpD:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #g:Landroid/widget/Gallery;
    .end local v4           #imageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;
    .end local v5           #lp_gallery:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #targetRect:Landroid/graphics/Rect;
    .end local v7           #thumbRect:Landroid/graphics/Rect;
    :catch_1
    move-exception v2

    .line 3996
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v8, "CameraApp"

    const-string v9, "NullPointerException!"

    invoke-static {v8, v9, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3997
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v8}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto/16 :goto_0

    .line 3989
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v0       #aniView:Landroid/widget/ImageView;
    .restart local v3       #g:Landroid/widget/Gallery;
    .restart local v4       #imageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;
    :cond_4
    :try_start_2
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v8}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 3998
    .end local v0           #aniView:Landroid/widget/ImageView;
    .end local v3           #g:Landroid/widget/Gallery;
    .end local v4           #imageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;
    :catch_2
    move-exception v2

    .line 3999
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "CameraApp"

    const-string v9, "IndexOutOfBoundsException!"

    invoke-static {v8, v9, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4000
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$36;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v8}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto/16 :goto_0
.end method
