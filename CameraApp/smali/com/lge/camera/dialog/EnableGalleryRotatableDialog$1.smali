.class Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$1;
.super Ljava/lang/Object;
.source "EnableGalleryRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 62
    const-string v1, "CameraApp"

    const-string v2, "ok button click...."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package:com.android.gallery3d"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;

    iget-object v1, v1, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v1, p0, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;

    invoke-virtual {v1}, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;->onDismiss()V

    .line 67
    return-void
.end method
