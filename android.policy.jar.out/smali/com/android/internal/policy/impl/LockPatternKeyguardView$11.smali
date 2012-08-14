.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2392
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->val$mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 2401
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2394
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->val$mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 2398
    return-void
.end method
