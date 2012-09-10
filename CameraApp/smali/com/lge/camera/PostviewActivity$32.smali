.class Lcom/lge/camera/PostviewActivity$32;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->showMultiShotGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;

.field final synthetic val$current_uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$32;->this$0:Lcom/lge/camera/PostviewActivity;

    iput-object p2, p0, Lcom/lge/camera/PostviewActivity$32;->val$current_uri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$32;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 3072
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$32;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$32;->val$current_uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3074
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$32;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$32;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$32;->val$current_uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewActivity;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->setThumbImageUseCaptureImage(Landroid/graphics/Bitmap;)V

    .line 3076
    :cond_0
    return-void
.end method
