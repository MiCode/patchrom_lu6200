.class Lcom/lge/camera/EffectsRecorder$5;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsRecorder;

.field final synthetic val$effect:I

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsRecorder;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder$5;->this$0:Lcom/lge/camera/EffectsRecorder;

    iput p2, p0, Lcom/lge/camera/EffectsRecorder$5;->val$effect:I

    iput p3, p0, Lcom/lge/camera/EffectsRecorder$5;->val$msg:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 938
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder$5;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mEffectsListener:Lcom/lge/camera/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/lge/camera/EffectsRecorder;->access$1000(Lcom/lge/camera/EffectsRecorder;)Lcom/lge/camera/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/EffectsRecorder$5;->val$effect:I

    iget v2, p0, Lcom/lge/camera/EffectsRecorder$5;->val$msg:I

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/EffectsRecorder$EffectsListener;->onEffectsUpdate(II)V

    .line 939
    return-void
.end method
