.class public abstract Lcom/lge/camera/command/ShowSubMenu;
.super Lcom/lge/camera/command/Command;
.source "ShowSubMenu.java"


# instance fields
.field protected AnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mIndex:I

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOpened:Z

.field protected mSubMenuGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/RotateImageButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubMenuMode:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/ShowSubMenu;->mOpened:Z

    .line 209
    new-instance v0, Lcom/lge/camera/command/ShowSubMenu$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/ShowSubMenu$2;-><init>(Lcom/lge/camera/command/ShowSubMenu;)V

    iput-object v0, p0, Lcom/lge/camera/command/ShowSubMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 254
    new-instance v0, Lcom/lge/camera/command/ShowSubMenu$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/ShowSubMenu$3;-><init>(Lcom/lge/camera/command/ShowSubMenu;)V

    iput-object v0, p0, Lcom/lge/camera/command/ShowSubMenu;->AnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/ShowSubMenu;Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/command/ShowSubMenu;->startAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/command/ShowSubMenu;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/camera/command/ShowSubMenu;->show(Z)V

    return-void
.end method

.method private show(Z)V
    .locals 6
    .parameter "show"

    .prologue
    .line 160
    const/16 v3, 0x8

    .line 161
    .local v3, visibility:I
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v4, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-boolean v4, p0, Lcom/lge/camera/command/ShowSubMenu;->mOpened:Z

    if-eqz v4, :cond_2

    .line 165
    const/4 v3, 0x0

    .line 166
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 167
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getMenuViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/ShowSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getMenuViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/ShowSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 171
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuView(I)Landroid/view/View;

    move-result-object v2

    .line 172
    .local v2, qfl:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 173
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/QuickFunctionController;->getQFLAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 174
    .local v0, mQFLanimation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 176
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 178
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    goto :goto_0
.end method

.method private startAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V
    .locals 15
    .parameter "listener"
    .parameter "qflButton"
    .parameter "subMenuButton"
    .parameter "open"

    .prologue
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    .local v2, aniParam:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    .local v11, targetParam:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->clearAnimation()V

    .line 118
    const/4 v13, 0x2

    new-array v12, v13, [I

    .line 119
    .local v12, targetPos:[I
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 121
    iget v13, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v13, v13

    iget v14, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v14, v14

    div-float v8, v13, v14

    .line 122
    .local v8, scaleX:F
    iget v13, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v13, v13

    iget v14, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 123
    .local v9, scaleY:F
    const/4 v13, 0x0

    aget v13, v12, v13

    iget v14, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v13, v14

    int-to-float v4, v13

    .line 124
    .local v4, distX:F
    const/4 v13, 0x1

    aget v13, v12, v13

    iget v14, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v13, v14

    int-to-float v5, v13

    .line 126
    .local v5, distY:F
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 128
    const/4 v7, 0x0

    .line 129
    .local v7, sa:Landroid/view/animation/ScaleAnimation;
    const/4 v10, 0x0

    .line 130
    .local v10, ta:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    .line 132
    .local v1, aa:Landroid/view/animation/AlphaAnimation;
    if-eqz p4, :cond_1

    .line 133
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    .end local v7           #sa:Landroid/view/animation/ScaleAnimation;
    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    invoke-direct {v7, v13, v8, v14, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 134
    .restart local v7       #sa:Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    .end local v10           #ta:Landroid/view/animation/TranslateAnimation;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v13, v4, v14, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 135
    .restart local v10       #ta:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .end local v1           #aa:Landroid/view/animation/AlphaAnimation;
    const/high16 v13, 0x3e80

    const/high16 v14, 0x3f80

    invoke-direct {v1, v13, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 142
    .restart local v1       #aa:Landroid/view/animation/AlphaAnimation;
    :goto_0
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x1

    invoke-direct {v3, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 143
    .local v3, aniSet:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 144
    invoke-virtual {v3, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 145
    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 146
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 147
    const-wide/16 v13, 0x190

    invoke-virtual {v3, v13, v14}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 148
    new-instance v13, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v13}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 149
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget-object v13, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v13, :cond_0

    .line 151
    iget-object v13, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v13}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v13

    iget v14, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v13, v14}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuView(I)Landroid/view/View;

    move-result-object v6

    .line 152
    .local v6, qfl:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 153
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 156
    .end local v6           #qfl:Landroid/view/View;
    :cond_0
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/lge/camera/command/ShowSubMenu;->mOpened:Z

    .line 157
    return-void

    .line 137
    .end local v3           #aniSet:Landroid/view/animation/AnimationSet;
    :cond_1
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    .end local v7           #sa:Landroid/view/animation/ScaleAnimation;
    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    invoke-direct {v7, v8, v13, v9, v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 138
    .restart local v7       #sa:Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    .end local v10           #ta:Landroid/view/animation/TranslateAnimation;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v4, v13, v5, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 139
    .restart local v10       #ta:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .end local v1           #aa:Landroid/view/animation/AlphaAnimation;
    const/high16 v13, 0x3f80

    const/high16 v14, 0x3e80

    invoke-direct {v1, v13, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v1       #aa:Landroid/view/animation/AlphaAnimation;
    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    iget v1, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 40
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 66
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    iget v2, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuMode:I

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 49
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenu(I)V

    .line 50
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 51
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->setSubMenuSelected(IZ)V

    .line 52
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimit()V

    .line 53
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/PreviewPanelController;->showHelpSubButton(Z)V

    .line 55
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 60
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/FocusController;->setFocusRectangleInitialize()V

    .line 62
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowSubMenu;->setOnClickListener()V

    .line 64
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/QuickFunctionController;->getAnimationView(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, animationView:Landroid/view/View;
    iget-object v1, p0, Lcom/lge/camera/command/ShowSubMenu;->AnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iget v2, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/lge/camera/command/ShowSubMenu;->showMenu(Landroid/view/animation/Animation$AnimationListener;ILandroid/view/View;Z)V

    goto/16 :goto_0
.end method

.method protected setOnClickListener()V
    .locals 6

    .prologue
    .line 185
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 187
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v2, :cond_1

    .line 207
    :cond_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getMenuViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lge/camera/command/ShowSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 193
    .local v1, menuGroup:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 196
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getSubMenuCount()I

    move-result v3

    .local v3, size:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 197
    iget-object v5, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getSubMenuIds()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v4, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryIconResources()[I

    move-result-object v5

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 200
    iget-object v4, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setText(Ljava/lang/String;)V

    .line 201
    iget-object v4, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setTag(Ljava/lang/Object;)V

    .line 202
    iget-object v4, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 203
    iget-object v4, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    iget-object v5, p0, Lcom/lge/camera/command/ShowSubMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected showMenu(Landroid/view/animation/Animation$AnimationListener;ILandroid/view/View;Z)V
    .locals 19
    .parameter "listener"
    .parameter "menuIndex"
    .parameter "qflView"
    .parameter "open"

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v16

    .line 72
    .local v16, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v16, :cond_0

    .line 110
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getSubMenuIds()[I

    move-result-object v15

    .line 77
    .local v15, menuId:[I
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getSubMenuCount()I

    move-result v13

    .line 78
    .local v13, menuCount:I
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getMenuViewId()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/camera/command/ShowSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 80
    .local v14, menuGroup:Landroid/view/ViewGroup;
    const/16 v17, 0x0

    .line 81
    .local v17, targetView:Lcom/lge/camera/components/RotateImageButton;
    const/4 v12, 0x0

    .line 82
    .local v12, menu:Lcom/lge/camera/components/RotateImageButton;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v13, :cond_2

    .line 83
    aget v5, v15, v11

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #menu:Lcom/lge/camera/components/RotateImageButton;
    check-cast v12, Lcom/lge/camera/components/RotateImageButton;

    .line 84
    .restart local v12       #menu:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v12}, Lcom/lge/camera/components/RotateImageButton;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    move-object/from16 v17, v12

    .line 86
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getEntryIconResources()[I

    move-result-object v5

    aget v5, v5, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    :cond_1
    invoke-virtual {v12}, Lcom/lge/camera/components/RotateImageButton;->AdjustFontSize()V

    .line 82
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 91
    :cond_2
    if-nez v17, :cond_3

    .line 92
    const/4 v5, 0x0

    aget v5, v15, v5

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #targetView:Lcom/lge/camera/components/RotateImageButton;
    check-cast v17, Lcom/lge/camera/components/RotateImageButton;

    .line 93
    .restart local v17       #targetView:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getEntryIconResources()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 97
    :cond_3
    move-object/from16 v9, v17

    .line 98
    .local v9, finalTargetView:Lcom/lge/camera/components/RotateImageButton;
    if-eqz p4, :cond_4

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/camera/command/ShowSubMenu;->startAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    .line 101
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v18, v0

    new-instance v5, Lcom/lge/camera/command/ShowSubMenu$1;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/lge/camera/command/ShowSubMenu$1;-><init>(Lcom/lge/camera/command/ShowSubMenu;Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;Lcom/lge/camera/components/RotateImageButton;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
