.class Lcom/android/internal/app/RingtonePickerActivity$4;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$4;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 511
    const-string v0, "RingtonePickerActivity"

    const-string/jumbo v1, "mOnCompletionListener...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$4;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #getter for: Lcom/android/internal/app/RingtonePickerActivity;->mediahandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/app/RingtonePickerActivity;->access$700(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 513
    return-void
.end method
