.class Lcom/lge/camera/CameraMediator$1;
.super Ljava/lang/Object;
.source "CameraMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraMediator;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CameraMediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/CameraMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/CameraApp;

    invoke-virtual {v1}, Lcom/lge/camera/CameraApp;->getPostviewRequestCode()I

    move-result v0

    .line 207
    .local v0, requestCode:I
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/CameraApp;

    invoke-virtual {v1}, Lcom/lge/camera/CameraApp;->setPostviewRequestInitCode()V

    .line 208
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/CameraApp;

    invoke-virtual {v1}, Lcom/lge/camera/CameraApp;->getPostviewRename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lge/camera/util/FileNamingHelper;->updateNextFileIndex(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    const v3, 0x7f0b012b

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :pswitch_3
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    const v3, 0x7f0b026a

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
