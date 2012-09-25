.class Lcom/android/settings_ex/lge/MotionSensorCalibration$1;
.super Ljava/lang/Object;
.source "MotionSensorCalibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lge/MotionSensorCalibration;->onCreate(Landroid/os/Bundle;)V
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
    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$1;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$1;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    #getter for: Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->access$000(Lcom/android/settings_ex/lge/MotionSensorCalibration;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 80
    iget-object v2, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$1;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #setter for: Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTesting:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->access$102(Lcom/android/settings_ex/lge/MotionSensorCalibration;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 81
    sput-boolean v0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mStart:Z

    .line 82
    iget-object v2, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$1;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    const v3, 0x7f080778

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$1;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-virtual {v1}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->finish()V

    .line 87
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
