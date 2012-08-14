.class Lcom/android/internal/widget/ActionBarView$4;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;

.field final synthetic val$menuView:Lcom/android/internal/view/menu/ActionMenuView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/view/menu/ActionMenuView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$4;->val$menuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$4;->val$menuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 310
    return-void
.end method
