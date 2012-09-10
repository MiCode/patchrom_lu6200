.class Lcom/lge/camera/Mediator$2;
.super Landroid/view/OrientationEventListener;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1654
    if-eq p1, v5, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    #getter for: Lcom/lge/camera/Mediator;->mOrientationChangeEnabled:Z
    invoke-static {v0}, Lcom/lge/camera/Mediator;->access$100(Lcom/lge/camera/Mediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-static {p1}, Lcom/lge/camera/util/ImageManager;->roundOrientation(I)I

    move-result v1

    #setter for: Lcom/lge/camera/Mediator;->mLastOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/Mediator;->access$202(Lcom/lge/camera/Mediator;I)I

    .line 1656
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    #getter for: Lcom/lge/camera/Mediator;->mLastOrientation:I
    invoke-static {v1}, Lcom/lge/camera/Mediator;->access$200(Lcom/lge/camera/Mediator;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    #setter for: Lcom/lge/camera/Mediator;->mLastOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/Mediator;->access$202(Lcom/lge/camera/Mediator;I)I

    .line 1660
    const/16 v0, 0xfa

    if-le p1, v0, :cond_1

    const/16 v0, 0x122

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    iget v0, v0, Lcom/lge/camera/Mediator;->mOrientation:I

    if-eqz v0, :cond_1

    .line 1664
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    #calls: Lcom/lge/camera/Mediator;->setOrientationListenerRotate(I)V
    invoke-static {v0, v6}, Lcom/lge/camera/Mediator;->access$300(Lcom/lge/camera/Mediator;I)V

    .line 1665
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->setEffectRecorderOrientationHint()V

    .line 1702
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    const/16 v0, 0x154

    if-gt p1, v0, :cond_2

    const/16 v0, 0x14

    if-ge p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    iget v0, v0, Lcom/lge/camera/Mediator;->mOrientation:I

    if-eq v0, v2, :cond_3

    .line 1671
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    #calls: Lcom/lge/camera/Mediator;->setOrientationListenerRotate(I)V
    invoke-static {v0, v2}, Lcom/lge/camera/Mediator;->access$300(Lcom/lge/camera/Mediator;I)V

    .line 1672
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->setEffectRecorderOrientationHint()V

    goto :goto_0

    .line 1674
    :cond_3
    const/16 v0, 0xa0

    if-le p1, v0, :cond_4

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    iget v0, v0, Lcom/lge/camera/Mediator;->mOrientation:I

    if-eq v0, v4, :cond_4

    .line 1678
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    #calls: Lcom/lge/camera/Mediator;->setOrientationListenerRotate(I)V
    invoke-static {v0, v4}, Lcom/lge/camera/Mediator;->access$300(Lcom/lge/camera/Mediator;I)V

    .line 1679
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->setEffectRecorderOrientationHint()V

    goto :goto_0

    .line 1681
    :cond_4
    const/16 v0, 0x46

    if-le p1, v0, :cond_5

    const/16 v0, 0x6e

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    iget v0, v0, Lcom/lge/camera/Mediator;->mOrientation:I

    if-eq v0, v3, :cond_5

    .line 1685
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    #calls: Lcom/lge/camera/Mediator;->setOrientationListenerRotate(I)V
    invoke-static {v0, v3}, Lcom/lge/camera/Mediator;->access$300(Lcom/lge/camera/Mediator;I)V

    .line 1686
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->setEffectRecorderOrientationHint()V

    goto :goto_0

    .line 1689
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getOrientation()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    #getter for: Lcom/lge/camera/Mediator;->mLastOrientation:I
    invoke-static {v0}, Lcom/lge/camera/Mediator;->access$200(Lcom/lge/camera/Mediator;)I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_6

    .line 1691
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v6}, Lcom/lge/camera/Mediator;->setOrientation(I)V

    goto :goto_0

    .line 1692
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    #getter for: Lcom/lge/camera/Mediator;->mLastOrientation:I
    invoke-static {v0}, Lcom/lge/camera/Mediator;->access$200(Lcom/lge/camera/Mediator;)I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_7

    .line 1693
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v3}, Lcom/lge/camera/Mediator;->setOrientation(I)V

    goto :goto_0

    .line 1694
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    #getter for: Lcom/lge/camera/Mediator;->mLastOrientation:I
    invoke-static {v0}, Lcom/lge/camera/Mediator;->access$200(Lcom/lge/camera/Mediator;)I

    move-result v0

    if-nez v0, :cond_8

    .line 1695
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v2}, Lcom/lge/camera/Mediator;->setOrientation(I)V

    goto/16 :goto_0

    .line 1696
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    #getter for: Lcom/lge/camera/Mediator;->mLastOrientation:I
    invoke-static {v0}, Lcom/lge/camera/Mediator;->access$200(Lcom/lge/camera/Mediator;)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v4}, Lcom/lge/camera/Mediator;->setOrientation(I)V

    goto/16 :goto_0
.end method
