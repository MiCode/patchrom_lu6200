.class Lcom/android/settings_ex/GestureSettings$1;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/GestureSettings;->openCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GestureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GestureSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings_ex/GestureSettings$1;->this$0:Lcom/android/settings_ex/GestureSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings$1;->this$0:Lcom/android/settings_ex/GestureSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings$1;->this$0:Lcom/android/settings_ex/GestureSettings;

    #getter for: Lcom/android/settings_ex/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/GestureSettings;->access$000(Lcom/android/settings_ex/GestureSettings;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    const-string v1, "gesture_tilt_default_use"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    const-string v1, "gesture_tilt_value"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string v1, "gesture_tilt_default_use"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    const-string v1, "gesture_tilt_value"

    iget-object v2, p0, Lcom/android/settings_ex/GestureSettings$1;->this$0:Lcom/android/settings_ex/GestureSettings;

    #getter for: Lcom/android/settings_ex/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/settings_ex/GestureSettings;->access$100(Lcom/android/settings_ex/GestureSettings;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
