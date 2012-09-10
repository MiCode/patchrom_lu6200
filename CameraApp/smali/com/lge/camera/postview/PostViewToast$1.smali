.class Lcom/lge/camera/postview/PostViewToast$1;
.super Ljava/lang/Object;
.source "PostViewToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/postview/PostViewToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/postview/PostViewToast;


# direct methods
.method constructor <init>(Lcom/lge/camera/postview/PostViewToast;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewToast$1;->this$0:Lcom/lge/camera/postview/PostViewToast;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast$1;->this$0:Lcom/lge/camera/postview/PostViewToast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostViewToast;->cancel(Z)V

    .line 62
    return-void
.end method
