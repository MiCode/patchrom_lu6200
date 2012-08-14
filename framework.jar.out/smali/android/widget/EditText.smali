.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final CAPP_VALUE_TEXT_DEFAULT_MAX_LENGTH:I = 0x2710

.field private static final END_SENSOR_DELAY:I = 0x85

.field private static final SENSOR_START_TIMEDELAY:I = 0x64

.field private static final START_SENSOR_DELAY:I = 0x84

.field private static final TAG:Ljava/lang/String; = "EditText"


# instance fields
.field mDes:Z

.field private mDisplay:Landroid/view/Display;

.field mHandlerSend:Z

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field mReg:Z

.field mSensorEventListener:Landroid/hardware/SensorEventListener;

.field mSensorThread:Ljava/lang/Thread;

.field mTapSensor:Landroid/hardware/Sensor;

.field mimportant:Z

.field private screenFilter:Landroid/content/IntentFilter;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 132
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    iput-boolean v4, p0, Landroid/widget/EditText;->mReg:Z

    .line 108
    iput-boolean v4, p0, Landroid/widget/EditText;->mDes:Z

    .line 109
    iput-boolean v4, p0, Landroid/widget/EditText;->mimportant:Z

    .line 110
    iput-boolean v4, p0, Landroid/widget/EditText;->mHandlerSend:Z

    .line 139
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/widget/EditText;->sensorManager:Landroid/hardware/SensorManager;

    .line 141
    iget-object v1, p0, Landroid/widget/EditText;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EditText;->mTapSensor:Landroid/hardware/Sensor;

    .line 147
    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EditText;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 153
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 155
    .local v0, filters:[Landroid/text/InputFilter;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 156
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x2710

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 160
    :cond_1
    return-void
.end method


# virtual methods
.method public extendSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 208
    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public isLayoutRtl()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 383
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 231
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gesture_all_editor"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 233
    const-string v1, "EditText"

    const-string v2, "EditText.onWindowFocusChanged(), Tap gesture sensor is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 240
    .local v0, context:Landroid/view/ContextThemeWrapper;
    invoke-virtual {v0, p0}, Landroid/view/ContextThemeWrapper;->containsEditTextInTapSensorList(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Landroid/widget/EditText;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/widget/EditText;->mTapSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 243
    invoke-virtual {v0, p0}, Landroid/view/ContextThemeWrapper;->addEditTextToTapSensorList(Landroid/widget/EditText;)V

    goto :goto_0

    .line 246
    .end local v0           #context:Landroid/view/ContextThemeWrapper;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 248
    .restart local v0       #context:Landroid/view/ContextThemeWrapper;
    invoke-virtual {v0, p0}, Landroid/view/ContextThemeWrapper;->containsEditTextInTapSensorList(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/widget/EditText;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/widget/EditText;->mTapSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 251
    invoke-virtual {v0, p0}, Landroid/view/ContextThemeWrapper;->addEditTextToTapSensorList(Landroid/widget/EditText;)V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x4080

    const/high16 v8, 0x4040

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 262
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    .line 263
    .local v2, type:I
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v10

    .line 267
    .local v0, action:F
    packed-switch v2, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 275
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gesture_all_editor"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 285
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/EditText;->mDisplay:Landroid/view/Display;

    .line 287
    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    invoke-virtual {p0}, Landroid/widget/EditText;->hideControllers()V

    .line 294
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 301
    iget-object v4, p0, Landroid/widget/EditText;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 368
    :cond_2
    :goto_1
    :pswitch_1
    const-string v4, "EditText"

    const-string/jumbo v5, "pokeUserActivity()..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_0
    iget-object v4, p0, Landroid/widget/EditText;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/os/IPowerManager;->userActivity_legacy(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "EditText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_2
    cmpl-float v4, v0, v8

    if-nez v4, :cond_3

    .line 307
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_1

    .line 309
    :cond_3
    cmpl-float v4, v0, v9

    if-nez v4, :cond_4

    .line 310
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_1

    .line 312
    :cond_4
    cmpl-float v4, v0, v6

    if-nez v4, :cond_5

    .line 313
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_1

    .line 315
    :cond_5
    cmpl-float v4, v0, v7

    if-nez v4, :cond_2

    .line 316
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_1

    .line 325
    :pswitch_3
    cmpl-float v4, v0, v8

    if-nez v4, :cond_6

    .line 326
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_1

    .line 328
    :cond_6
    cmpl-float v4, v0, v9

    if-nez v4, :cond_7

    .line 329
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto/16 :goto_1

    .line 331
    :cond_7
    cmpl-float v4, v0, v6

    if-nez v4, :cond_8

    .line 332
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto/16 :goto_1

    .line 334
    :cond_8
    cmpl-float v4, v0, v7

    if-nez v4, :cond_2

    .line 335
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto/16 :goto_1

    .line 349
    :pswitch_4
    cmpl-float v4, v0, v8

    if-nez v4, :cond_9

    .line 350
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto/16 :goto_1

    .line 352
    :cond_9
    cmpl-float v4, v0, v9

    if-nez v4, :cond_a

    .line 353
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto/16 :goto_1

    .line 355
    :cond_a
    cmpl-float v4, v0, v6

    if-nez v4, :cond_b

    .line 356
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto/16 :goto_1

    .line 358
    :cond_b
    cmpl-float v4, v0, v7

    if-nez v4, :cond_2

    .line 359
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto/16 :goto_1

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch

    .line 301
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 390
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    .line 395
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gesture_all_editor"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 397
    const-string v1, "EditText"

    const-string v2, "EditText.onWindowFocusChanged(), Tap gesture sensor is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    .line 405
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 406
    .local v0, context:Landroid/view/ContextThemeWrapper;
    invoke-virtual {v0, p0}, Landroid/view/ContextThemeWrapper;->containsEditTextInTapSensorList(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    iget-object v1, p0, Landroid/widget/EditText;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/widget/EditText;->mTapSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 411
    invoke-virtual {v0, p0}, Landroid/view/ContextThemeWrapper;->addEditTextToTapSensorList(Landroid/widget/EditText;)V

    goto :goto_0

    .line 414
    .end local v0           #context:Landroid/view/ContextThemeWrapper;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 416
    .restart local v0       #context:Landroid/view/ContextThemeWrapper;
    invoke-virtual {v0, p0}, Landroid/view/ContextThemeWrapper;->containsEditTextInTapSensorList(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    iget-object v1, p0, Landroid/widget/EditText;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/widget/EditText;->mTapSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 421
    invoke-virtual {v0, p0}, Landroid/view/ContextThemeWrapper;->addEditTextToTapSensorList(Landroid/widget/EditText;)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 201
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .parameter "ellipsis"

    .prologue
    .line 212
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 217
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 194
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 187
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "text"
    .parameter "type"

    .prologue
    .line 179
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 180
    return-void
.end method
