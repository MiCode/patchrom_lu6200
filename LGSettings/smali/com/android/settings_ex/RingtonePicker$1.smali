.class Lcom/android/settings_ex/RingtonePicker$1;
.super Ljava/lang/Object;
.source "RingtonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePicker$1;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker$1;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #calls: Lcom/android/settings_ex/RingtonePicker;->stopAnyPlayingRingtone()V
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePicker;->access$000(Lcom/android/settings_ex/RingtonePicker;)V

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker$1;->this$0:Lcom/android/settings_ex/RingtonePicker;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/RingtonePicker;->mDrmJob:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/RingtonePicker;->access$102(Lcom/android/settings_ex/RingtonePicker;Z)Z

    .line 214
    return-void
.end method
