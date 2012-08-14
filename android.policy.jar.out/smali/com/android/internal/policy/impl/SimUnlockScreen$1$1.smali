.class Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 435
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_0

    .line 436
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->hide()V

    .line 438
    :cond_0
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$success:Z

    if-eqz v6, :cond_2

    .line 441
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 442
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 443
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v7, 0x10900ab

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const v8, 0x1020328

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 446
    .local v2, layout:Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 447
    .local v4, text:Landroid/widget/TextView;
    const v6, 0x10402ec

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 449
    new-instance v5, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 450
    .local v5, toast:Landroid/widget/Toast;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 451
    const/16 v6, 0x10

    invoke-virtual {v5, v6, v9, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 452
    invoke-virtual {v5, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 453
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 458
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    .end local v4           #text:Landroid/widget/TextView;
    .end local v5           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iput v9, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 460
    const-string v6, ""

    sput-object v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEntryValue:Ljava/lang/String;

    .line 461
    sput-boolean v9, Lcom/android/internal/policy/impl/SimUnlockScreen;->bPause:Z

    .line 465
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 466
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 491
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 492
    return-void

    .line 469
    :cond_2
    const/4 v3, 0x0

    .line 474
    .local v3, pin1_retry_count:I
    :try_start_0
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I

    move-result v3

    .line 477
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->setPopupStringByOperator(I)V
    invoke-static {v6, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$000(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V

    .line 479
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    sget-object v7, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;->PIN_CHECKPIN:Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;I)V
    invoke-static {v6, v7, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 486
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 488
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iput v9, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x10402ea

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
