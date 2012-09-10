.class Lcom/lge/voiceshutter/library/ISTAudioRecorder$1;
.super Ljava/lang/Thread;
.source "ISTAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/voiceshutter/library/ISTAudioRecorder;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/voiceshutter/library/ISTAudioRecorder;


# direct methods
.method constructor <init>(Lcom/lge/voiceshutter/library/ISTAudioRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$1;->this$0:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 324
    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$1;->this$0:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    #calls: Lcom/lge/voiceshutter/library/ISTAudioRecorder;->recording()V
    invoke-static {v1}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->access$000(Lcom/lge/voiceshutter/library/ISTAudioRecorder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
