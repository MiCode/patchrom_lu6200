.class Lcom/lge/voiceshutter/library/AudioRecogEngine$1;
.super Landroid/os/Handler;
.source "AudioRecogEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/voiceshutter/library/AudioRecogEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;


# direct methods
.method constructor <init>(Lcom/lge/voiceshutter/library/AudioRecogEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$1;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 44
    :sswitch_0
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$1;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    #getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mCallback:Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;
    invoke-static {v0}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$000(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;->onAudioRecogResultCallback(I)V

    goto :goto_0

    .line 47
    :sswitch_1
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$1;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->stop()V

    goto :goto_0

    .line 50
    :sswitch_2
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$1;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    #getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mCallback:Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;
    invoke-static {v0}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$000(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;->onAudioRecogErrorCallback(I)V

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
