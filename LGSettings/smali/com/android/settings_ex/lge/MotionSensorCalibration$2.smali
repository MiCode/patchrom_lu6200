.class Lcom/android/settings_ex/lge/MotionSensorCalibration$2;
.super Ljava/lang/Object;
.source "MotionSensorCalibration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$2;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    sget-boolean v0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$2;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTestTime:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mStart:Z

    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$2;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    #getter for: Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->access$000(Lcom/android/settings_ex/lge/MotionSensorCalibration;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$2;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTesting:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->access$102(Lcom/android/settings_ex/lge/MotionSensorCalibration;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 101
    :cond_0
    return-void
.end method
