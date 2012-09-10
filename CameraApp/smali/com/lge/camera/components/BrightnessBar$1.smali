.class Lcom/lge/camera/components/BrightnessBar$1;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/BrightnessBar;->updateBrightness(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/BrightnessBar;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/BrightnessBar;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lge/camera/components/BrightnessBar$1;->this$0:Lcom/lge/camera/components/BrightnessBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$1;->this$0:Lcom/lge/camera/components/BrightnessBar;

    #getter for: Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/components/BrightnessBar;->access$000(Lcom/lge/camera/components/BrightnessBar;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$1;->this$0:Lcom/lge/camera/components/BrightnessBar;

    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar$1;->this$0:Lcom/lge/camera/components/BrightnessBar;

    #getter for: Lcom/lge/camera/components/BrightnessBar;->mValue:I
    invoke-static {v1}, Lcom/lge/camera/components/BrightnessBar;->access$100(Lcom/lge/camera/components/BrightnessBar;)I

    move-result v1

    #calls: Lcom/lge/camera/components/BrightnessBar;->setCursor(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/components/BrightnessBar;->access$200(Lcom/lge/camera/components/BrightnessBar;I)V

    .line 151
    return-void
.end method
