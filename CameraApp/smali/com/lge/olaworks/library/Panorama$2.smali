.class Lcom/lge/olaworks/library/Panorama$2;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/olaworks/library/Panorama;->startSynthesisThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/olaworks/library/Panorama;


# direct methods
.method constructor <init>(Lcom/lge/olaworks/library/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/lge/olaworks/library/Panorama$2;->this$0:Lcom/lge/olaworks/library/Panorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lge/olaworks/library/Panorama$2;->this$0:Lcom/lge/olaworks/library/Panorama;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/Panorama;->synthesize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/lge/olaworks/library/Panorama$2;->this$0:Lcom/lge/olaworks/library/Panorama;

    iget-object v0, v0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    invoke-interface {v0}, Lcom/lge/olaworks/library/Panorama$Callback;->onError()V

    .line 300
    :cond_0
    return-void
.end method
