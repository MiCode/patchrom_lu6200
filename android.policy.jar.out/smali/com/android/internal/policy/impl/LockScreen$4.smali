.class Lcom/android/internal/policy/impl/LockScreen$4;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreen;->setSPModeMailUnReadCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$4;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iput p2, p0, Lcom/android/internal/policy/impl/LockScreen$4;->val$count:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x64

    .line 820
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen$4;->val$count:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen$4;->val$count:I

    if-ge v0, v2, :cond_1

    .line 821
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$4;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon3:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$4;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon3:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/LockScreen;->access$400()[I

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen$4;->val$count:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen$4;->val$count:I

    if-gt v2, v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$4;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon3:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$4;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon3:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/LockScreen;->access$400()[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 828
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen$4;->val$count:I

    if-gtz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$4;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mDocAtticon3:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
