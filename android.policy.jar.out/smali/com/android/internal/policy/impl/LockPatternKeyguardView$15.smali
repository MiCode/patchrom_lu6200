.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$15;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showHalfWrongPasswordDialog(Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$entercode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2463
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$15;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$15;->val$entercode:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$15;->val$ad:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$15;->val$entercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "life is good"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2467
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "user inputs life is good correctly!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$15;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2470
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$15;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setInputHalfFailedAttempts(Z)V

    .line 2477
    :goto_0
    return-void

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$15;->val$entercode:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2475
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "mismatch with life is good!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
