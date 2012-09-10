.class Lcom/lge/camera/components/BeautyshotBar$2;
.super Ljava/lang/Object;
.source "BeautyshotBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/BeautyshotBar;->updateBeautyshot(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/BeautyshotBar;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/BeautyshotBar;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/lge/camera/components/BeautyshotBar$2;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar$2;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #getter for: Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/components/BeautyshotBar;->access$000(Lcom/lge/camera/components/BeautyshotBar;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar$2;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #getter for: Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/components/BeautyshotBar;->access$000(Lcom/lge/camera/components/BeautyshotBar;)Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_beautyshot"

    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$2;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #getter for: Lcom/lge/camera/components/BeautyshotBar;->mValue:I
    invoke-static {v2}, Lcom/lge/camera/components/BeautyshotBar;->access$100(Lcom/lge/camera/components/BeautyshotBar;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar$2;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #getter for: Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/components/BeautyshotBar;->access$000(Lcom/lge/camera/components/BeautyshotBar;)Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 172
    return-void
.end method
