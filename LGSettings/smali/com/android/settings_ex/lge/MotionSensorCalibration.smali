.class public Lcom/android/settings_ex/lge/MotionSensorCalibration;
.super Landroid/app/Activity;
.source "MotionSensorCalibration.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;
    }
.end annotation


# static fields
.field public static mStart:Z


# instance fields
.field public handler:Landroid/os/Handler;

.field private mProgress:Landroid/app/ProgressDialog;

.field mSensorManager:Landroid/hardware/SensorManager;

.field mTestTime:J

.field private mTesting:Ljava/lang/Boolean;

.field private mThread:Ljava/lang/Thread;

.field private resetsensorbutton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mStart:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTesting:Ljava/lang/Boolean;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTestTime:J

    .line 200
    new-instance v0, Lcom/android/settings_ex/lge/MotionSensorCalibration$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lge/MotionSensorCalibration$3;-><init>(Lcom/android/settings_ex/lge/MotionSensorCalibration;)V

    iput-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/lge/MotionSensorCalibration;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/lge/MotionSensorCalibration;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTesting:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/lge/MotionSensorCalibration;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTesting:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/lge/MotionSensorCalibration;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method public ReadIntFromFile()I
    .locals 8

    .prologue
    .line 229
    new-instance v1, Ljava/lang/String;

    const-string v6, "/sys/devices/virtual/misc/k3dh_acc_misc/calibration"

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, filepath:Ljava/lang/String;
    const/4 v5, 0x1

    .line 231
    .local v5, result:I
    const/4 v3, 0x0

    .line 233
    .local v3, inReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x8

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .end local v3           #inReader:Ljava/io/BufferedReader;
    .local v4, inReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, in:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v5

    .line 244
    :cond_0
    if-eqz v4, :cond_1

    .line 245
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .line 253
    .end local v2           #in:Ljava/lang/String;
    .end local v4           #inReader:Ljava/io/BufferedReader;
    .restart local v3       #inReader:Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return v5

    .line 248
    .end local v3           #inReader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/lang/String;
    .restart local v4       #inReader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 252
    .end local v4           #inReader:Ljava/io/BufferedReader;
    .restart local v3       #inReader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 239
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    if-eqz v3, :cond_2

    .line 245
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 248
    :catch_2
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 242
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 244
    :goto_2
    if-eqz v3, :cond_3

    .line 245
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 251
    :cond_3
    :goto_3
    throw v6

    .line 248
    :catch_3
    move-exception v0

    .line 250
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 242
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #inReader:Ljava/io/BufferedReader;
    .restart local v4       #inReader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #inReader:Ljava/io/BufferedReader;
    .restart local v3       #inReader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 239
    .end local v3           #inReader:Ljava/io/BufferedReader;
    .restart local v4       #inReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #inReader:Ljava/io/BufferedReader;
    .restart local v3       #inReader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public WriteToFile()Z
    .locals 6

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 262
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    const-string v3, "1"

    .line 266
    .local v3, strValue:Ljava/lang/String;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/devices/virtual/misc/k3dh_acc_misc/calibration"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 269
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 280
    if-eqz v2, :cond_0

    .line 281
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    :cond_0
    :goto_0
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #strValue:Ljava/lang/String;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return v4

    .line 284
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #strValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #strValue:Ljava/lang/String;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 273
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    const/4 v4, 0x0

    .line 280
    if-eqz v1, :cond_1

    .line 281
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 284
    :catch_2
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 278
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 280
    :goto_3
    if-eqz v1, :cond_2

    .line 281
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 287
    :cond_2
    :goto_4
    throw v4

    .line 284
    :catch_3
    move-exception v0

    .line 286
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 278
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #strValue:Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 271
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->setContentView(I)V

    .line 67
    const-string v0, "motion"

    const-string v1, "x3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 69
    const v0, 0x7f0b0257

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->resetsensorbutton:Landroid/widget/Button;

    .line 70
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->resetsensorbutton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f080779

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/settings_ex/lge/MotionSensorCalibration$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/lge/MotionSensorCalibration$1;-><init>(Lcom/android/settings_ex/lge/MotionSensorCalibration;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->resetsensorbutton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ex/lge/MotionSensorCalibration$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/lge/MotionSensorCalibration$2;-><init>(Lcom/android/settings_ex/lge/MotionSensorCalibration;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;-><init>(Lcom/android/settings_ex/lge/MotionSensorCalibration;Lcom/android/settings_ex/lge/MotionSensorCalibration$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;

    .line 131
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTesting:Ljava/lang/Boolean;

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mStart:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->finish()V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 112
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 136
    return-void
.end method
