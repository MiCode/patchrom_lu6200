.class Lcom/lge/camera/CamcorderMediator$1;
.super Ljava/lang/Object;
.source "CamcorderMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CamcorderMediator;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/CamcorderMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/CamcorderMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/Camcorder;

    invoke-virtual {v1}, Lcom/lge/camera/Camcorder;->getPostviewRequestCode()I

    move-result v0

    .line 207
    .local v0, requestCode:I
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/Camcorder;

    invoke-virtual {v1}, Lcom/lge/camera/Camcorder;->setPostviewRequestInitCode()V

    .line 208
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/Camcorder;

    invoke-virtual {v1}, Lcom/lge/camera/Camcorder;->getPostviewRename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lge/camera/util/FileNamingHelper;->updateNextFileIndex(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    const v3, 0x7f0b012b

    invoke-virtual {v2, v3}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
