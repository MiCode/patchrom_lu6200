.class Landroid/media/Ringtone$1;
.super Ljava/lang/Object;
.source "Ringtone.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Ringtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Landroid/media/Ringtone;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 440
    packed-switch p2, :pswitch_data_0

    .line 447
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mErrorCheck:Z
    invoke-static {v3}, Landroid/media/Ringtone;->access$000(Landroid/media/Ringtone;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #setter for: Landroid/media/Ringtone;->mErrorCheck:Z
    invoke-static {v3, v2}, Landroid/media/Ringtone;->access$002(Landroid/media/Ringtone;Z)Z

    .line 449
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 450
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    const/4 v4, 0x0

    #setter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v3, v4}, Landroid/media/Ringtone;->access$102(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 452
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #calls: Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;
    invoke-static {v3}, Landroid/media/Ringtone;->access$200(Landroid/media/Ringtone;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, defaultPath:Ljava/lang/String;
    invoke-static {}, Landroid/media/Ringtone;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/media/Ringtone;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE] OnErrorListener... set Default Ring..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    if-eqz v0, :cond_1

    .line 455
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v3, v4}, Landroid/media/Ringtone;->access$102(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 457
    :try_start_0
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 458
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mStreamType:I
    invoke-static {v4}, Landroid/media/Ringtone;->access$500(Landroid/media/Ringtone;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 459
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 468
    .end local v0           #defaultPath:Ljava/lang/String;
    :cond_1
    :goto_1
    return v2

    .line 442
    :pswitch_0
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mErrorCheck:Z
    invoke-static {v3}, Landroid/media/Ringtone;->access$000(Landroid/media/Ringtone;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #setter for: Landroid/media/Ringtone;->mErrorCheck:Z
    invoke-static {v3, v2}, Landroid/media/Ringtone;->access$002(Landroid/media/Ringtone;Z)Z

    .line 444
    :cond_2
    iget-object v2, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 445
    const/4 v2, 0x1

    goto :goto_1

    .line 460
    .restart local v0       #defaultPath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 461
    .local v1, ex:Ljava/io/IOException;
    invoke-static {}, Landroid/media/Ringtone;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[LGE] default filepath is not set"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
