.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$entercode:Landroid/widget/EditText;

.field final synthetic val$mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Landroid/content/Context;Landroid/widget/EditText;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$entercode:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 572
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 573
    .local v1, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$entercode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v4}, Lcom/lge/cappuccino/IMdm;->checkPasswordRecovery(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 578
    const-string v2, "PASSWORD_RECOVERY"

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$entercode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 580
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 585
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$10;->val$mContext:Landroid/content/Context;

    const v4, 0x20b0052

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
