.class Lcom/lge/camera/EffectsRecorder$3;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder$3;->this$0:Lcom/lge/camera/EffectsRecorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingDone()V
    .locals 3

    .prologue
    .line 670
    const-string v0, "CameraApp"

    const-string v1, "Recording done callback triggered"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder$3;->this$0:Lcom/lge/camera/EffectsRecorder;

    const/4 v1, 0x0

    const/4 v2, 0x4

    #calls: Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/lge/camera/EffectsRecorder;->access$400(Lcom/lge/camera/EffectsRecorder;II)V

    .line 672
    return-void
.end method
