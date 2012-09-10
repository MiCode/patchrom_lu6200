.class Lcom/lge/camera/PostviewActivity$18;
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
    .line 2156
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$18;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2158
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$18;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/lge/camera/PostviewActivity;->deleteSelectedImages(ZZ)I

    .line 2159
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$18;->this$0:Lcom/lge/camera/PostviewActivity;

    #setter for: Lcom/lge/camera/PostviewActivity;->mTimeMachineDeleteDone:Z
    invoke-static {v0, v2}, Lcom/lge/camera/PostviewActivity;->access$1802(Lcom/lge/camera/PostviewActivity;Z)Z

    .line 2160
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$18;->this$0:Lcom/lge/camera/PostviewActivity;

    #calls: Lcom/lge/camera/PostviewActivity;->saveFinished()V
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$1900(Lcom/lge/camera/PostviewActivity;)V

    .line 2161
    return-void
.end method
