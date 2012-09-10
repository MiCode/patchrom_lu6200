.class Lcom/lge/camera/controller/QuickFunctionController$6;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 496
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 497
    const/4 v2, 0x0

    .line 498
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, size:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 499
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 500
    if-eqz v2, :cond_1

    .line 501
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_flash"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z
    invoke-static {v4}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)[Z

    move-result-object v4

    aget-boolean v4, v4, v0

    if-nez v4, :cond_1

    .line 503
    const-string v4, "off"

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 504
    .local v1, iconIndex:I
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 505
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v4, v0, v6}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    .line 498
    .end local v1           #iconIndex:I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_camera_shot_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 509
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z
    invoke-static {v4}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)[Z

    move-result-object v4

    aget-boolean v4, v4, v0

    if-nez v4, :cond_1

    .line 510
    const-string v4, "shotmode_normal"

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 511
    .restart local v1       #iconIndex:I
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 512
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v4, v0, v6}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    goto :goto_1

    .line 517
    .end local v1           #iconIndex:I
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/controller/QuickFunctionController;->access$000(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$6;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #calls: Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I
    invoke-static {v5, v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$400(Lcom/lge/camera/controller/QuickFunctionController;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto :goto_1

    .line 519
    :cond_2
    return-void
.end method
