.class Lcom/lge/camera/CameraHelp$HelpHandler;
.super Landroid/os/Handler;
.source "CameraHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CameraHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CameraHelp;


# direct methods
.method private constructor <init>(Lcom/lge/camera/CameraHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->this$0:Lcom/lge/camera/CameraHelp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/CameraHelp;Lcom/lge/camera/CameraHelp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/lge/camera/CameraHelp$HelpHandler;-><init>(Lcom/lge/camera/CameraHelp;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 184
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help setSelection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->this$0:Lcom/lge/camera/CameraHelp;

    #getter for: Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/CameraHelp;->access$200(Lcom/lge/camera/CameraHelp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->this$0:Lcom/lge/camera/CameraHelp;

    #getter for: Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lge/camera/CameraHelp;->access$400(Lcom/lge/camera/CameraHelp;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->this$0:Lcom/lge/camera/CameraHelp;

    #getter for: Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;
    invoke-static {v1}, Lcom/lge/camera/CameraHelp;->access$300(Lcom/lge/camera/CameraHelp;)Lcom/lge/camera/adapter/HelpItemAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraHelp$HelpHandler;->this$0:Lcom/lge/camera/CameraHelp;

    #getter for: Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/CameraHelp;->access$200(Lcom/lge/camera/CameraHelp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/adapter/HelpItemAdapter;->getItemPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 187
    :cond_0
    return-void
.end method
