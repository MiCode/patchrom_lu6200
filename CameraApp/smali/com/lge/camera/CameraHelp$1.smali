.class Lcom/lge/camera/CameraHelp$1;
.super Ljava/lang/Object;
.source "CameraHelp.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraHelp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CameraHelp;


# direct methods
.method constructor <init>(Lcom/lge/camera/CameraHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/camera/CameraHelp$1;->this$0:Lcom/lge/camera/CameraHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 89
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/camera/CameraHelp$1;->this$0:Lcom/lge/camera/CameraHelp;

    const/4 v1, 0x1

    #setter for: Lcom/lge/camera/CameraHelp;->isScrolled:Z
    invoke-static {v0, v1}, Lcom/lge/camera/CameraHelp;->access$102(Lcom/lge/camera/CameraHelp;Z)Z

    .line 83
    return-void
.end method
