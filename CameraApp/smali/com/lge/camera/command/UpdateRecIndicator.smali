.class public Lcom/lge/camera/command/UpdateRecIndicator;
.super Lcom/lge/camera/command/Command;
.source "UpdateRecIndicator.java"


# instance fields
.field protected mMediator:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    check-cast p1, Lcom/lge/camera/CamcorderMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/UpdateRecIndicator;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 18
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    const v7, 0x7f020177

    const/4 v6, 0x0

    const v5, 0x7f0900aa

    const v4, 0x7f0900a5

    .line 22
    const-string v1, "CameraApp"

    const-string v2, "UpdateRecIndicator"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/UpdateRecIndicator;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v4}, Lcom/lge/camera/command/UpdateRecIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/UpdateRecIndicator;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/lge/camera/command/UpdateRecIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {p0, v5}, Lcom/lge/camera/command/UpdateRecIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .local v0, recIcon:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 29
    .end local v0           #recIcon:Landroid/widget/ImageView;
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/lge/camera/command/UpdateRecIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {p0, v5}, Lcom/lge/camera/command/UpdateRecIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 33
    .restart local v0       #recIcon:Landroid/widget/ImageView;
    const v1, 0x7f020178

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 43
    .end local v0           #recIcon:Landroid/widget/ImageView;
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/lge/camera/command/UpdateRecIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p0, v5}, Lcom/lge/camera/command/UpdateRecIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .restart local v0       #recIcon:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 49
    .end local v0           #recIcon:Landroid/widget/ImageView;
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/lge/camera/command/UpdateRecIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {p0, v5}, Lcom/lge/camera/command/UpdateRecIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .restart local v0       #recIcon:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
