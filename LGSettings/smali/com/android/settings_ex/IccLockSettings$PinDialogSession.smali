.class Lcom/android/settings_ex/IccLockSettings$PinDialogSession;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinDialogSession"
.end annotation


# instance fields
.field public mNewText:Ljava/lang/String;

.field public mOldText:Ljava/lang/String;

.field public mReenterText:Ljava/lang/String;

.field public mReturnStage:I

.field public mTargetPinDialog:Lcom/android/settings_ex/EditPinPreferenceBehavior;

.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/IccLockSettings;Lcom/android/settings_ex/IccLockSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "aDialog"

    .prologue
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PinDialogSession : onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$400(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PinDialogSessiononDismiss : mPinDialogSession!=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->mTargetPinDialog:Lcom/android/settings_ex/EditPinPreferenceBehavior;

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->mReturnStage:I

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->mOldText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->mNewText:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->mReenterText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->showPinDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;
    invoke-static {v0, v1}, Lcom/android/settings_ex/IccLockSettings;->access$402(Lcom/android/settings_ex/IccLockSettings;Lcom/android/settings_ex/IccLockSettings$PinDialogSession;)Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    .line 258
    return-void
.end method
