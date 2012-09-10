.class Lcom/lge/camera/command/SelectDuration$1;
.super Ljava/lang/Object;
.source "SelectDuration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/SelectDuration;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SelectDuration;

.field final synthetic val$con:Z

.field final synthetic val$videoSizePrefIndex:I


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SelectDuration;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iput p2, p0, Lcom/lge/camera/command/SelectDuration$1;->val$videoSizePrefIndex:I

    iput-boolean p3, p0, Lcom/lge/camera/command/SelectDuration$1;->val$con:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f0b012c

    const v3, 0x3e4ccccd

    .line 37
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 38
    iget v1, p0, Lcom/lge/camera/command/SelectDuration$1;->val$videoSizePrefIndex:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 39
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    invoke-virtual {v1}, Lcom/lge/camera/command/SelectDuration;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/command/SelectDuration$1;->val$con:Z

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimit(Z)V

    .line 41
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/command/SelectDuration$1;->val$con:Z

    if-eqz v1, :cond_3

    .line 42
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    .line 43
    .local v0, currentCarrierCode:I
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->recTimeText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->isMMSRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->recTimeText:Landroid/widget/TextView;

    const-string v2, "00/60"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v1

    const v2, 0x3e99999a

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->setScaleWidthHeight(F)V

    .line 59
    .end local v0           #currentCarrierCode:I
    :cond_1
    :goto_0
    return-void

    .line 51
    .restart local v0       #currentCarrierCode:I
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->recTimeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/camcorder/RecordingController;->setScaleWidthHeight(F)V

    goto :goto_0

    .line 56
    .end local v0           #currentCarrierCode:I
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->recTimeText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->recTimeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v1, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/camcorder/RecordingController;->setScaleWidthHeight(F)V

    goto :goto_0
.end method
