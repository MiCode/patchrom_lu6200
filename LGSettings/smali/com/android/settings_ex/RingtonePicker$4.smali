.class Lcom/android/settings_ex/RingtonePicker$4;
.super Ljava/lang/Object;
.source "RingtonePicker.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingtonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingtonePicker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePicker$4;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const-string v0, "RingtonePicker"

    const-string v1, "mOnCompletionListener...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker$4;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->mediahandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePicker;->access$1000(Lcom/android/settings_ex/RingtonePicker;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1555
    return-void
.end method
