.class Lcom/lge/camera/components/ZoomBar$2;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/ZoomBar;->setCursor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/ZoomBar;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/lge/camera/components/ZoomBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/lge/camera/components/ZoomBar$2;->this$0:Lcom/lge/camera/components/ZoomBar;

    iput p2, p0, Lcom/lge/camera/components/ZoomBar$2;->val$value:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 334
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar$2;->this$0:Lcom/lge/camera/components/ZoomBar;

    #getter for: Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v3}, Lcom/lge/camera/components/ZoomBar;->access$000(Lcom/lge/camera/components/ZoomBar;)Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 336
    invoke-static {}, Lcom/lge/camera/components/ZoomBar;->access$100()I

    move-result v3

    iget v4, p0, Lcom/lge/camera/components/ZoomBar$2;->val$value:I

    int-to-float v4, v4

    invoke-static {}, Lcom/lge/camera/components/ZoomBar;->access$200()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/lge/camera/components/ZoomBar$2;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v6}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 337
    .local v2, position:I
    invoke-static {}, Lcom/lge/camera/components/ZoomBar;->access$300()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 338
    invoke-static {}, Lcom/lge/camera/components/ZoomBar;->access$300()I

    move-result v2

    .line 339
    :cond_0
    invoke-static {}, Lcom/lge/camera/components/ZoomBar;->access$100()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 340
    invoke-static {}, Lcom/lge/camera/components/ZoomBar;->access$100()I

    move-result v2

    .line 342
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar$2;->this$0:Lcom/lge/camera/components/ZoomBar;

    const v4, 0x7f0900e5

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/ZoomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 343
    .local v0, cursor:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 344
    .local v1, param:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 345
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    return-void
.end method
