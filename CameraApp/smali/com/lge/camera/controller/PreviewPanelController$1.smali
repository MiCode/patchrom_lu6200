.class Lcom/lge/camera/controller/PreviewPanelController$1;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 202
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v2, v2, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v2, :cond_0

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 204
    .local v0, delegateArea:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v2, v2, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/ShutterButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 205
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x64

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 206
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v2, v2, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 208
    .local v1, expandedArea:Landroid/view/TouchDelegate;
    const-class v2, Landroid/view/View;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v3, v3, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v3}, Lcom/lge/camera/components/ShutterButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v2, v2, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v2}, Lcom/lge/camera/components/ShutterButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 212
    .end local v0           #delegateArea:Landroid/graphics/Rect;
    .end local v1           #expandedArea:Landroid/view/TouchDelegate;
    :cond_0
    return-void
.end method
