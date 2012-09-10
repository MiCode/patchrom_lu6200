.class Lcom/lge/camera/CamLoading$2;
.super Ljava/lang/Object;
.source "CamLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CamLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CamLoading;


# direct methods
.method constructor <init>(Lcom/lge/camera/CamLoading;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/camera/CamLoading$2;->this$0:Lcom/lge/camera/CamLoading;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/lge/camera/util/Common;->mCheckEnterKind:I

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lge/camera/CamLoading$2;->this$0:Lcom/lge/camera/CamLoading;

    invoke-virtual {v0}, Lcom/lge/camera/CamLoading;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->checkCameraOut(Landroid/app/Activity;)V

    .line 40
    :cond_0
    return-void
.end method
