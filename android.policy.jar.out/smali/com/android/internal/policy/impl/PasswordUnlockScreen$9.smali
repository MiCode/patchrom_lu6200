.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;->showResetPasswordDialog(Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

.field final synthetic val$mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;->val$mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 557
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 551
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;->val$mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 555
    return-void
.end method
