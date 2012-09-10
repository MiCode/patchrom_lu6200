.class Lcom/lge/camera/PostviewActivity$29;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->createEnableGalleryPopup(I)V
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
    .line 2563
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$29;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2565
    const-string v0, "CameraApp"

    const-string v1, "Enable gallery dialog dismissed!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$29;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewActivity;->access$1202(Lcom/lge/camera/PostviewActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2567
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$29;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v1, -0x1

    #setter for: Lcom/lge/camera/PostviewActivity;->mDialogId:I
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewActivity;->access$2202(Lcom/lge/camera/PostviewActivity;I)I

    .line 2568
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$29;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    .line 2569
    return-void
.end method
