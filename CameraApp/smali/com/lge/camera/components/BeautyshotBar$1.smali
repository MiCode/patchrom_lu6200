.class Lcom/lge/camera/components/BeautyshotBar$1;
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
    .line 157
    iput-object p1, p0, Lcom/lge/camera/components/BeautyshotBar$1;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar$1;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #getter for: Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/components/BeautyshotBar;->access$000(Lcom/lge/camera/components/BeautyshotBar;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar$1;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    iget-object v1, p0, Lcom/lge/camera/components/BeautyshotBar$1;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #getter for: Lcom/lge/camera/components/BeautyshotBar;->mValue:I
    invoke-static {v1}, Lcom/lge/camera/components/BeautyshotBar;->access$100(Lcom/lge/camera/components/BeautyshotBar;)I

    move-result v1

    #calls: Lcom/lge/camera/components/BeautyshotBar;->setCursor(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/components/BeautyshotBar;->access$200(Lcom/lge/camera/components/BeautyshotBar;I)V

    .line 161
    return-void
.end method
