.class Lcom/lge/camera/PostviewActivity$6;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->setTouchDelegate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;

.field final synthetic val$sourceViewId:I

.field final synthetic val$targetViewId:I


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$6;->this$0:Lcom/lge/camera/PostviewActivity;

    iput p2, p0, Lcom/lge/camera/PostviewActivity$6;->val$sourceViewId:I

    iput p3, p0, Lcom/lge/camera/PostviewActivity$6;->val$targetViewId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1303
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$6;->this$0:Lcom/lge/camera/PostviewActivity;

    iget v5, p0, Lcom/lge/camera/PostviewActivity$6;->val$sourceViewId:I

    invoke-virtual {v4, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1304
    .local v1, source:Landroid/view/View;
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity$6;->this$0:Lcom/lge/camera/PostviewActivity;

    iget v5, p0, Lcom/lge/camera/PostviewActivity$6;->val$targetViewId:I

    invoke-virtual {v4, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1305
    .local v2, target:Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1306
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1307
    new-instance v3, Landroid/view/TouchDelegate;

    invoke-direct {v3, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1308
    .local v3, td:Landroid/view/TouchDelegate;
    invoke-virtual {v1, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1309
    return-void
.end method
