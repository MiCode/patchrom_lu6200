.class Lcom/lge/camera/PostviewActivity$21;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->updateReviewThumbnailButton(I)V
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
    .line 2293
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2295
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v2, p0}, Lcom/lge/camera/PostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 2298
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/lge/camera/PostviewActivity;->access$2000(Lcom/lge/camera/PostviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2299
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/lge/camera/PostviewActivity;->access$2000(Lcom/lge/camera/PostviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2300
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v3, 0x0

    #setter for: Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/lge/camera/PostviewActivity;->access$2002(Lcom/lge/camera/PostviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2302
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2303
    .local v1, imageListSize:I
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 2320
    .end local v1           #imageListSize:I
    :cond_1
    :goto_0
    return-void

    .line 2307
    .restart local v1       #imageListSize:I
    :cond_2
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 2308
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v4, v2}, Lcom/lge/camera/PostviewActivity;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/lge/camera/PostviewActivity;->setThumbImageUseCaptureImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2319
    .end local v1           #imageListSize:I
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    #calls: Lcom/lge/camera/PostviewActivity;->updateLoadedThumbnailButton()V
    invoke-static {v2}, Lcom/lge/camera/PostviewActivity;->access$300(Lcom/lge/camera/PostviewActivity;)V

    goto :goto_0

    .line 2310
    .restart local v1       #imageListSize:I
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$21;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v4, v2}, Lcom/lge/camera/PostviewActivity;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/lge/camera/PostviewActivity;->setThumbImageUseCaptureImage(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 2312
    .end local v1           #imageListSize:I
    :catch_0
    move-exception v0

    .line 2313
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "CameraApp"

    const-string v3, "ArrayIndexOutOfBoundsException!"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2314
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 2315
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v3, "NullPointerException!"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2316
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 2317
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "CameraApp"

    const-string v3, "IndexOutOfBoundsException!"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
