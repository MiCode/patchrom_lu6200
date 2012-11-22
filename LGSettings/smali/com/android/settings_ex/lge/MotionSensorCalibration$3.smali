.class Lcom/android/settings_ex/lge/MotionSensorCalibration$3;
.super Landroid/os/Handler;
.source "MotionSensorCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lge/MotionSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lge/MotionSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$3;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-boolean v1, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mStart:Z

    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$3;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    #getter for: Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->access$000(Lcom/android/settings_ex/lge/MotionSensorCalibration;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$3;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    #getter for: Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTesting:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->access$100(Lcom/android/settings_ex/lge/MotionSensorCalibration;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$3;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    const v1, 0x7f080778

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$3;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTesting:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->access$102(Lcom/android/settings_ex/lge/MotionSensorCalibration;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$3;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-virtual {v0}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$3;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    const v1, 0x7f080747

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
