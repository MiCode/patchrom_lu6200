.class Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

.field final synthetic val$isFallback:Z

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->val$pin:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->val$isFallback:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    #getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->val$pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    #getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I
    invoke-static {v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$000(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->val$isFallback:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    #getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->confirmHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$200(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 632
    return-void
.end method
