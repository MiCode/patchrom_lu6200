.class Lcom/lge/camera/components/ZoomBar$1;
.super Ljava/util/TimerTask;
.source "ZoomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/ZoomBar;->updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/ZoomBar;

.field final synthetic val$actionEnd:Z

.field final synthetic val$step:I

.field final synthetic val$volumeKey:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/components/ZoomBar;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    iput p2, p0, Lcom/lge/camera/components/ZoomBar$1;->val$step:I

    iput-boolean p3, p0, Lcom/lge/camera/components/ZoomBar$1;->val$volumeKey:Z

    iput-boolean p4, p0, Lcom/lge/camera/components/ZoomBar$1;->val$actionEnd:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    iget v1, p0, Lcom/lge/camera/components/ZoomBar$1;->val$step:I

    iget-boolean v2, p0, Lcom/lge/camera/components/ZoomBar$1;->val$volumeKey:Z

    iget-boolean v3, p0, Lcom/lge/camera/components/ZoomBar$1;->val$actionEnd:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/components/ZoomBar;->updateZoom(IZZ)V

    .line 289
    return-void
.end method
