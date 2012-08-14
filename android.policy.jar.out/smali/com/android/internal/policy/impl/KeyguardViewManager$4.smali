.class Lcom/android/internal/policy/impl/KeyguardViewManager$4;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field final synthetic val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    monitor-enter v1

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->cleanUp()V

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$600(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 570
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_GHOST_FINGER:Z

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    const-string v2, "0"

    #calls: Lcom/android/internal/policy/impl/KeyguardViewManager;->setKeyguardState(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$700(Lcom/android/internal/policy/impl/KeyguardViewManager;Ljava/lang/String;)V

    .line 573
    :cond_0
    monitor-exit v1

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
