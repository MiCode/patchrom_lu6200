.class Lcom/lge/camera/PostviewActivity$31;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->adjustFilenameForView(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;

.field final synthetic val$tFilename:Ljava/lang/String;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2688
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$31;->this$0:Lcom/lge/camera/PostviewActivity;

    iput-object p2, p0, Lcom/lge/camera/PostviewActivity$31;->val$tv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lge/camera/PostviewActivity$31;->val$tFilename:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$31;->val$tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$31;->val$tFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2692
    return-void
.end method
