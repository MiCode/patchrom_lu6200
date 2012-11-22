.class public abstract Lcom/android/settings_ex/EditPinPreferenceBehavior;
.super Ljava/lang/Object;
.source "EditPinPreferenceBehavior.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;
.implements Lcom/android/settings_ex/EditPinPreference$OnShowDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;
    }
.end annotation


# static fields
.field private static final BUNDLE_NEW_TEXT:Ljava/lang/String;

.field private static final BUNDLE_OLD_TEXT:Ljava/lang/String;

.field private static final BUNDLE_REENTER_TEXT:Ljava/lang/String;

.field private static final BUNDLE_RETURN_STAGE_FROM_NOTIFY:Ljava/lang/String;

.field private static final BUNDLE_STAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sNewInstanceId:I


# instance fields
.field private mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

.field private mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

.field private mInstanceId:I

.field private mNewText:Ljava/lang/String;

.field private mOldText:Ljava/lang/String;

.field private mReenterText:Ljava/lang/String;

.field private mReturnStageFromNotify:I

.field private mStage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v0, Lcom/android/settings_ex/EditPinPreferenceBehavior;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_STAGE:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "returnStageFromNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_RETURN_STAGE_FROM_NOTIFY:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oldText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_OLD_TEXT:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_NEW_TEXT:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reenterText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_REENTER_TEXT:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->sNewInstanceId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ex/EditPinPreference;Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;)V
    .locals 2
    .parameter "aEditPinPreference"
    .parameter "aCallback"

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    iput v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    iput v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReturnStageFromNotify:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mOldText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mNewText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReenterText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-static {}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->newInstanceId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    iput-object p2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    iput-object p1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/EditPinPreference;->setOnShowDialog(Lcom/android/settings_ex/EditPinPreference$OnShowDialog;)V

    return-void
.end method

.method private static newInstanceId()I
    .locals 2

    .prologue
    sget v0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->sNewInstanceId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->sNewInstanceId:I

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->dismissDialog()V

    return-void
.end method

.method public getCallback()Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    return-object v0
.end method

.method public getEditPinPreference()Lcom/android/settings_ex/EditPinPreference;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    return-object v0
.end method

.method public getNewText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mNewText:Ljava/lang/String;

    return-object v0
.end method

.method public getOldText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mOldText:Ljava/lang/String;

    return-object v0
.end method

.method public getReenterText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReenterText:Ljava/lang/String;

    return-object v0
.end method

.method public getStage()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    return v0
.end method

.method protected onCheckReasonable(ILjava/lang/String;)I
    .locals 3
    .parameter "aStep"
    .parameter "aText"

    .prologue
    const/4 v1, 0x1

    .line 323
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 324
    .local v0, len:I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/16 v2, 0x8

    if-ge v2, v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_STAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_STAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    .line 248
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_RETURN_STAGE_FROM_NOTIFY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_RETURN_STAGE_FROM_NOTIFY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReturnStageFromNotify:I

    .line 251
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_OLD_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_OLD_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mOldText:Ljava/lang/String;

    .line 254
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_NEW_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_NEW_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mNewText:Ljava/lang/String;

    .line 257
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_REENTER_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_REENTER_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReenterText:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "aDialog"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReturnStageFromNotify:I

    .local v0, step:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReturnStageFromNotify:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->showPinDialog(I)V

    :cond_0
    return-void
.end method

.method public onPinEntered(Lcom/android/settings_ex/EditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    if-nez p2, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->setDialogValues(ILcom/android/settings_ex/EditPinPreference;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, text:Ljava/lang/String;
    iget v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->onCheckReasonable(ILjava/lang/String;)I

    move-result v0

    .local v0, result:I
    if-nez v0, :cond_2

    iget v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->onReasonablePinEntered(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    iget v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    iget-object v3, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->setDialogValues(ILcom/android/settings_ex/EditPinPreference;)V

    goto :goto_0

    .line 157
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->showPinDialog(I)V

    goto :goto_0

    .line 160
    :cond_2
    iget v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->showNotifyAndReturnStage(II)V

    goto :goto_0
.end method

.method protected onReasonablePinEntered(ILjava/lang/String;)I
    .locals 6
    .parameter "aCurStep"
    .parameter "aText"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .local v0, callback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;
    const/4 v1, 0x1

    .local v1, nextStage:I
    packed-switch p1, :pswitch_data_0

    const/16 v3, 0x8

    if-gt v3, p1, :cond_a

    iget-object v3, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    invoke-interface {v3, p1, p2}, Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;->handleUserReasonablePinEntered(ILjava/lang/String;)I

    move-result v1

    :cond_0
    if-ne v1, v5, :cond_9

    move p1, v2

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->getCallback()Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2, v4}, Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;->onValidPinEntered(Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_1
    if-ne v1, v5, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mOldText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    iget-object v3, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mOldText:Ljava/lang/String;

    invoke-interface {v2, p0, p1, v3, v4}, Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;->onValidPinEntered(Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 186
    :cond_3
    if-ne v1, v5, :cond_4

    .line 187
    const/4 p1, 0x5

    goto :goto_0

    :cond_4
    move p1, v1

    .line 189
    goto :goto_0

    .line 194
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mNewText:Ljava/lang/String;

    .line 196
    if-ne v1, v5, :cond_5

    .line 197
    const/4 v1, 0x6

    :cond_5
    move p1, v1

    .line 199
    goto :goto_0

    .line 203
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReenterText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mNewText:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReenterText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 206
    const/4 v3, 0x7

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->showNotifyAndReturnStage(II)V

    move p1, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->getCallback()Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mOldText:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mNewText:Ljava/lang/String;

    invoke-interface {v0, p0, p1, v3, v4}, Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;->onValidPinEntered(Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 214
    :cond_7
    if-ne v1, v5, :cond_8

    move p1, v2

    .line 215
    goto :goto_0

    :cond_8
    move p1, v1

    .line 217
    goto :goto_0

    :cond_9
    move p1, v1

    .line 225
    goto :goto_0

    .line 227
    :cond_a
    sget-object v2, Lcom/android/settings_ex/EditPinPreferenceBehavior;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next Step: ??? on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->getStage()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->showPinDialog()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_STAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_RETURN_STAGE_FROM_NOTIFY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReturnStageFromNotify:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_OLD_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mOldText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_NEW_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mNewText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/EditPinPreferenceBehavior;->BUNDLE_REENTER_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReenterText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method protected abstract onSetDialogValues(ILcom/android/settings_ex/EditPinPreference;)V
.end method

.method public onShowDialog()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->setDialogValues(ILcom/android/settings_ex/EditPinPreference;)V

    :cond_0
    return-void
.end method

.method public resetText()V
    .locals 1

    .prologue
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mOldText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mNewText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReenterText:Ljava/lang/String;

    return-void
.end method

.method public setCallback(Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;)V
    .locals 0
    .parameter "aCallback"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    return-void
.end method

.method protected setDialogValues(ILcom/android/settings_ex/EditPinPreference;)V
    .locals 0
    .parameter "aStage"
    .parameter "aEditPinPreference"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->onSetDialogValues(ILcom/android/settings_ex/EditPinPreference;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "aEnabled"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->getEditPinPreference()Lcom/android/settings_ex/EditPinPreference;

    move-result-object v0

    .local v0, pref:Lcom/android/settings_ex/EditPinPreference;
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/EditPinPreference;->setVirtualEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/EditPinPreference;->setVirtualDisabledOnClickListener(Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->getCallback()Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->getCallback()Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;->onSetEnabled(Lcom/android/settings_ex/EditPinPreferenceBehavior;Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->getCallback()Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    move-result-object v1

    goto :goto_0
.end method

.method public setOldText(Ljava/lang/String;)V
    .locals 0
    .parameter "aText"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mOldText:Ljava/lang/String;

    return-void
.end method

.method protected showNotifyAndReturnStage(II)V
    .locals 1
    .parameter "aReturnStage"
    .parameter "aReason"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReturnStageFromNotify:I

    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mCallback:Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;->onShowNotifyAndReturnStage(Lcom/android/settings_ex/EditPinPreferenceBehavior;II)V

    :cond_0
    return-void
.end method

.method public showPinDialog()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->showPinDialog(I)V

    return-void
.end method

.method public showPinDialog(I)V
    .locals 1
    .parameter "aStage"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->setDialogValues(ILcom/android/settings_ex/EditPinPreference;)V

    iget v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mStage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mEditPinPreference:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->showPinDialog()V

    :cond_0
    return-void
.end method

.method public showPinDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "aStage"
    .parameter "aOldText"
    .parameter "aNewText"
    .parameter "aReenterText"

    .prologue
    iput-object p2, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mOldText:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mNewText:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings_ex/EditPinPreferenceBehavior;->mReenterText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->showPinDialog(I)V

    return-void
.end method
