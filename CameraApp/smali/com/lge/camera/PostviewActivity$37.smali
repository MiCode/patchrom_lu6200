.class Lcom/lge/camera/PostviewActivity$37;
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
    .line 4006
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 4008
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v6, p0}, Lcom/lge/camera/PostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 4010
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    invoke-static {v6}, Lcom/lge/camera/PostviewActivity;->access$3000(Lcom/lge/camera/PostviewActivity;)I

    move-result v6

    if-gez v6, :cond_1

    .line 4011
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    .line 4058
    :cond_0
    :goto_0
    return-void

    .line 4015
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    const v7, 0x7f090031

    invoke-virtual {v6, v7}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 4016
    .local v4, frameView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    const v7, 0x7f090030

    invoke-virtual {v6, v7}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 4017
    .local v3, frameBackView:Landroid/widget/ImageView;
    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 4018
    :cond_2
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 4048
    .end local v3           #frameBackView:Landroid/widget/ImageView;
    .end local v4           #frameView:Landroid/widget/ImageView;
    :catch_0
    move-exception v2

    .line 4049
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "CameraApp"

    const-string v7, "ArrayIndexOutOfBoundsException!"

    invoke-static {v6, v7, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4050
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto :goto_0

    .line 4022
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v3       #frameBackView:Landroid/widget/ImageView;
    .restart local v4       #frameView:Landroid/widget/ImageView;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v6, v4}, Lcom/lge/camera/PostviewActivity;->setImageViewClear(Landroid/widget/ImageView;)V

    .line 4023
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v6, v3}, Lcom/lge/camera/PostviewActivity;->setImageViewClear(Landroid/widget/ImageView;)V

    .line 4025
    const/4 v0, 0x0

    .line 4026
    .local v0, bmpD1:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .line 4028
    .local v1, bmpD2:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewActivity;->getContShotThumbAdapter()Lcom/lge/camera/postview/ContShotThumbAdapter;

    move-result-object v5

    .line 4029
    .local v5, imageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 4030
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    invoke-static {v7}, Lcom/lge/camera/PostviewActivity;->access$3000(Lcom/lge/camera/PostviewActivity;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/PostviewActivity;->refreshContinuousGallery(IZ)V

    .line 4032
    iget-object v6, v5, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    invoke-static {v7}, Lcom/lge/camera/PostviewActivity;->access$3000(Lcom/lge/camera/PostviewActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmpD1:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4033
    .restart local v0       #bmpD1:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    invoke-static {v6}, Lcom/lge/camera/PostviewActivity;->access$3000(Lcom/lge/camera/PostviewActivity;)I

    move-result v6

    if-lt v6, v9, :cond_4

    .line 4034
    iget-object v6, v5, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    invoke-static {v7}, Lcom/lge/camera/PostviewActivity;->access$3000(Lcom/lge/camera/PostviewActivity;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bmpD2:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 4037
    .restart local v1       #bmpD2:Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4038
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4040
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4041
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4042
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4043
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    invoke-static {v6}, Lcom/lge/camera/PostviewActivity;->access$3000(Lcom/lge/camera/PostviewActivity;)I

    move-result v6

    if-lt v6, v9, :cond_5

    .line 4044
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->anim:Landroid/view/animation/Animation;
    invoke-static {v6}, Lcom/lge/camera/PostviewActivity;->access$3200(Lcom/lge/camera/PostviewActivity;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4046
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-static {v6}, Lcom/lge/camera/PostviewActivity;->access$3010(Lcom/lge/camera/PostviewActivity;)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 4051
    .end local v0           #bmpD1:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bmpD2:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #frameBackView:Landroid/widget/ImageView;
    .end local v4           #frameView:Landroid/widget/ImageView;
    .end local v5           #imageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;
    :catch_1
    move-exception v2

    .line 4052
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v6, "CameraApp"

    const-string v7, "NullPointerException!"

    invoke-static {v6, v7, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4053
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto/16 :goto_0

    .line 4054
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 4055
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "CameraApp"

    const-string v7, "IndexOutOfBoundsException!"

    invoke-static {v6, v7, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4056
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity$37;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto/16 :goto_0
.end method
