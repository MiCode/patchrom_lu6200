.class Lcom/lge/camera/components/BrightnessBar$2;
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
    .line 157
    iput-object p1, p0, Lcom/lge/camera/components/BrightnessBar$2;->this$0:Lcom/lge/camera/components/BrightnessBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$2;->this$0:Lcom/lge/camera/components/BrightnessBar;

    #getter for: Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/components/BrightnessBar;->access$000(Lcom/lge/camera/components/BrightnessBar;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$2;->this$0:Lcom/lge/camera/components/BrightnessBar;

    #getter for: Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/components/BrightnessBar;->access$000(Lcom/lge/camera/components/BrightnessBar;)Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_brightness"

    iget-object v2, p0, Lcom/lge/camera/components/BrightnessBar$2;->this$0:Lcom/lge/camera/components/BrightnessBar;

    #getter for: Lcom/lge/camera/components/BrightnessBar;->mValue:I
    invoke-static {v2}, Lcom/lge/camera/components/BrightnessBar;->access$100(Lcom/lge/camera/components/BrightnessBar;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$2;->this$0:Lcom/lge/camera/components/BrightnessBar;

    #getter for: Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/components/BrightnessBar;->access$000(Lcom/lge/camera/components/BrightnessBar;)Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.setting.SetBrightness"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 162
    return-void
.end method
