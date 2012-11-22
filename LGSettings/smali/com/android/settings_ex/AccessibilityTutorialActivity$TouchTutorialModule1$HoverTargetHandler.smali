.class Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;
.super Landroid/os/Handler;
.source "AccessibilityTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverTargetHandler"
.end annotation


# instance fields
.field private mInsideTarget:Z

.field final synthetic this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;Lcom/android/settings_ex/AccessibilityTutorialActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;-><init>(Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;)V

    return-void
.end method


# virtual methods
.method public enteredTarget()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;

    #getter for: Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;->access$300(Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;)Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    return-void
.end method

.method public exitedTarget()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;

    const v1, 0x7f0806a0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;

    #getter for: Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;->access$400(Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;

    const v1, 0x7f0806a1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;

    #getter for: Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;->access$400(Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/android/settings_ex/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
