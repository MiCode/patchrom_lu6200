.class public Lcom/lge/camera/controller/SettingRotatableController;
.super Lcom/lge/camera/controller/SettingController;
.source "SettingRotatableController.java"


# static fields
.field private static final SETTING_ANIMATION_TIME:J = 0x12cL


# instance fields
.field protected BACKGROUND_BORDER_HEIGHT:I

.field protected CHILD_SETTING_VIEW_HEIGHT:I

.field protected CHILD_SETTING_VIEW_MARGIN_LEFT:I

.field protected CHILD_SETTING_VIEW_MARGIN_TOP:I

.field protected CHILD_SETTING_VIEW_WIDTH:I

.field protected CONFIG_ITEM_HEIGHT:I

.field protected DIVIDER_HEIGHT:I

.field protected LCD_HEIGHT:I

.field protected LCD_WIDTH:I

.field protected MARGIN_HEIGHT:I

.field protected PANEL_WIDTH:I

.field protected PARENT_SETTING_VIEW_HEIGHT:I

.field protected PARENT_SETTING_VIEW_MARGIN_LEFT:I

.field protected PARENT_SETTING_VIEW_MARGIN_TOP:I

.field protected PARENT_SETTING_VIEW_WIDTH:I

.field protected mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

.field protected mChildSettingListView:Landroid/widget/ListView;

.field private mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDegree:I

.field private mIsRtoL:Z

.field protected mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

.field protected mParentSettingListView:Landroid/widget/ListView;

.field private mParentSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mSettingView:Landroid/view/View;

.field private mSettingViewRemoving:Z

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mediator"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 59
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    .line 60
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingMenuBoarderHeight()I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->BACKGROUND_BORDER_HEIGHT:I

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSystemLocale:Ljava/util/Locale;

    .line 66
    iput-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    .line 164
    iput-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 651
    new-instance v1, Lcom/lge/camera/controller/SettingRotatableController$6;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SettingRotatableController$6;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    iput-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 732
    new-instance v1, Lcom/lge/camera/controller/SettingRotatableController$7;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SettingRotatableController$7;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    iput-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 71
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0146

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_WIDTH:I

    .line 72
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0147

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_HEIGHT:I

    .line 73
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0144

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    .line 74
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0145

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_TOP:I

    .line 76
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014a

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_WIDTH:I

    .line 77
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014b

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_HEIGHT:I

    .line 78
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0148

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    .line 79
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0149

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    .line 81
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0032

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    .line 82
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0033

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0045

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0083

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    .line 85
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    .line 86
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 88
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSystemLocale:Ljava/util/Locale;

    .line 89
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, strLanguage:Ljava/lang/String;
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    .line 98
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/SettingRotatableController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/SettingRotatableController;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/controller/SettingRotatableController;->updateChildSettingListHeight(III)V

    return-void
.end method

.method private updateChildSettingListHeight(III)V
    .locals 9
    .parameter "parentSettingPosition"
    .parameter "leftMargin"
    .parameter "topMargin"

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x0

    .line 616
    const/4 v3, 0x0

    .line 618
    .local v3, mNumOfChildItems:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v3

    .line 620
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetSettingListHeight()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 621
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_WIDTH:I

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 622
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    if-ne v4, v8, :cond_1

    .line 623
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 627
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 625
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 628
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetSettingListHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 629
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_5

    .line 630
    :cond_3
    const/4 v2, -0x2

    .line 631
    .local v2, layout_height:I
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    div-int/2addr v4, v5

    add-int/lit8 v0, v4, -0x2

    .line 633
    .local v0, itemCount:I
    if-le v3, v0, :cond_4

    .line 634
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int v2, v4, v5

    .line 636
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_WIDTH:I

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 637
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, p2, p3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 638
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 640
    .end local v0           #itemCount:I
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #layout_height:I
    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_HEIGHT:I

    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v5, v6

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 641
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    if-ne v4, v8, :cond_6

    .line 642
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 646
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 644
    :cond_6
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method private updateParentSettingListHeight(II)V
    .locals 9
    .parameter "leftMargin"
    .parameter "topMargin"

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x0

    .line 571
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v3

    .line 572
    .local v3, parentAdapterCount:I
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetSettingListHeight()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 573
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_WIDTH:I

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 574
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    if-ne v4, v8, :cond_0

    .line 575
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 579
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    :goto_1
    return-void

    .line 577
    :cond_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 581
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_5

    .line 582
    :cond_2
    const/4 v2, -0x2

    .line 583
    .local v2, layout_height:I
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    div-int/2addr v4, v5

    add-int/lit8 v0, v4, -0x2

    .line 585
    .local v0, itemCount:I
    const/4 v1, 0x0

    .line 586
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-lt v3, v0, :cond_4

    .line 587
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 588
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int v2, v4, v5

    .line 589
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_WIDTH:I

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 601
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    invoke-virtual {v1, p1, p2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 602
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 593
    :cond_3
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int v2, v4, v5

    .line 594
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v5, v2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_2

    .line 598
    :cond_4
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v3

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int v2, v4, v5

    .line 599
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_WIDTH:I

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_2

    .line 604
    .end local v0           #itemCount:I
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #layout_height:I
    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_HEIGHT:I

    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v5, v6

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 605
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    if-ne v4, v8, :cond_6

    .line 606
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 610
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 608
    :cond_6
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3
.end method


# virtual methods
.method public displaySettingView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 101
    const-string v3, "CameraApp"

    const-string v4, "settingView : displaySettingView-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-boolean v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.DisplaySettingMenu"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.ShowSettingMenu"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.ShowSettingMenu"

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 107
    const-string v3, "CameraApp"

    const-string v4, "settingView : displaySettingView - return, send command"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 112
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    .line 114
    .local v0, currentSetting:Lcom/lge/camera/setting/SettingMenu;
    new-instance v3, Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v0, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 115
    new-instance v3, Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v6}, Lcom/lge/camera/setting/SettingMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 116
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 117
    const-string v3, "CameraApp"

    const-string v4, "hb inflate Setting Layout...!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const v3, 0x7f030021

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->inflateView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    .line 119
    const v3, 0x7f09005e

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 120
    .local v2, vg:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v1

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getMenuCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 126
    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    iget-boolean v3, v3, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-nez v3, :cond_2

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 130
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/SettingMenu;->setCurrentMenu(I)Z

    .line 137
    :cond_3
    :goto_2
    const v3, 0x7f0900c4

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    .line 138
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 139
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setSelected(Z)V

    .line 143
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v4

    iget v4, v4, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 145
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    const v3, 0x7f0900c3

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    .line 148
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 149
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setSelected(Z)V

    .line 153
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 156
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.Rotate"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 158
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_TOP:I

    invoke-direct {p0, v3, v4}, Lcom/lge/camera/controller/SettingRotatableController;->updateParentSettingListHeight(II)V

    .line 159
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v3

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    invoke-direct {p0, v3, v4, v5}, Lcom/lge/camera/controller/SettingRotatableController;->updateChildSettingListHeight(III)V

    .line 161
    const-string v3, "CameraApp"

    const-string v4, "hb displaySettingView-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_4
    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/SettingMenu;->setCurrentMenu(I)Z

    goto/16 :goto_2
.end method

.method public hideAnimation()V
    .locals 6

    .prologue
    const v5, 0x7f0900ca

    const v4, 0x7f0900c9

    .line 332
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 336
    .local v2, rlP:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 338
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 339
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$4;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$4;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 344
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 345
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public isNullSettingView()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettingViewRemoving()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->isNullSettingView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 803
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 806
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraMainSettingMenu;->close()V

    .line 807
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->close()V

    .line 808
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSetting;->close()V

    .line 809
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSetting;->close()V

    .line 816
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->close()V

    .line 818
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 819
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wow not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 821
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 822
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 823
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 825
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 827
    :cond_0
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 830
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wow not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 832
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 833
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 834
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 836
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 838
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    .line 841
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSystemLocale:Ljava/util/Locale;

    if-eqz v0, :cond_4

    .line 842
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSystemLocale:Ljava/util/Locale;

    .line 845
    :cond_4
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->onDestroy()V

    .line 846
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void

    .line 811
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->close()V

    .line 812
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->close()V

    .line 813
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoSetting;->close()V

    .line 814
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoSetting;->close()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 780
    const-string v0, "CameraApp"

    const-string v1, "onPause-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingInit:Z

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 783
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/CameraSetting;->saveSetting(Landroid/content/Context;)V

    .line 784
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/CameraSetting;->saveSetting(Landroid/content/Context;)V

    .line 791
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 794
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 797
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->onPause()V

    .line 798
    const-string v0, "CameraApp"

    const-string v1, "onPause-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void

    .line 786
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/VideoSetting;->saveSetting(Landroid/content/Context;)V

    .line 787
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/VideoSetting;->saveSetting(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public removeChildSettingView()V
    .locals 6

    .prologue
    const v5, 0x7f0900ca

    const/4 v4, 0x0

    .line 263
    const v2, 0x7f0900c9

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 267
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 269
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 270
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/SettingRotatableController$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableController$2;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 279
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 280
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 282
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 283
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelected(Z)V

    .line 284
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuAdapter;->update()V

    goto :goto_0
.end method

.method public removeSettingView()V
    .locals 7

    .prologue
    const v6, 0x7f0900ca

    const v5, 0x7f0900c9

    .line 166
    const-string v3, "CameraApp"

    const-string v4, "settingView : removeSettingView - animation start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    if-eqz v3, :cond_1

    .line 170
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "settingView : removeSettingView - return"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 175
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 176
    .local v2, rlP:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 177
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 178
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 179
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_3

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->removeSettingViewAll()V

    goto :goto_0

    .line 183
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 184
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$1;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 208
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public removeSettingViewAll()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 214
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingViewAll -start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 218
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView -return, mSettingView is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 258
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 230
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 232
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    .line 235
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 236
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->close()V

    .line 237
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 239
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 242
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 243
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 244
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    .line 248
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->close()V

    .line 249
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 251
    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 252
    .local v0, vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 253
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    .line 254
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 255
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 256
    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 257
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v4}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    goto/16 :goto_0
.end method

.method public rotateChildList(I)V
    .locals 5
    .parameter "degree"

    .prologue
    const v4, 0x7f0900ca

    const/4 v2, 0x0

    .line 426
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 458
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 429
    .local v0, cl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 430
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 431
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 434
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 435
    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 456
    :goto_1
    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v2, v3, v4}, Lcom/lge/camera/controller/SettingRotatableController;->updateChildSettingListHeight(III)V

    goto :goto_0

    .line 437
    :sswitch_0
    iget-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    :goto_2
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 438
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 437
    :cond_1
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    goto :goto_2

    .line 441
    :sswitch_1
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 442
    iget-boolean v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v3, :cond_2

    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_WIDTH:I

    sub-int/2addr v2, v3

    :cond_2
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 445
    :sswitch_2
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 446
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 449
    :sswitch_3
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 450
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateParentList(I)V
    .locals 4
    .parameter "degree"

    .prologue
    const v3, 0x7f0900c9

    .line 376
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 423
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 379
    .local v1, pl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v1, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 380
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 381
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 384
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 386
    .local v0, params_pl:Landroid/view/ViewGroup$MarginLayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 421
    :goto_1
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v2, v3}, Lcom/lge/camera/controller/SettingRotatableController;->updateParentSettingListHeight(II)V

    goto :goto_0

    .line 388
    :sswitch_0
    iget-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    :goto_2
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 389
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_TOP:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 388
    :cond_1
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    goto :goto_2

    .line 392
    :sswitch_1
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 393
    iget-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_3
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_WIDTH:I

    sub-int/2addr v2, v3

    goto :goto_3

    .line 396
    :sswitch_2
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 397
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_TOP:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 414
    :sswitch_3
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 415
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_WIDTH:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 386
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setChildMenuLocation(IZ)V
    .locals 17
    .parameter "degree"
    .parameter "rotation"

    .prologue
    .line 461
    const v14, 0x7f0900ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    if-nez v14, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const v14, 0x7f0900ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    .line 467
    .local v3, cl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v3}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 472
    .local v10, params:Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez p1, :cond_4

    .line 473
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    :goto_1
    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 474
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 559
    :cond_2
    :goto_2
    invoke-virtual {v3, v10}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 473
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    goto :goto_1

    .line 475
    :cond_4
    const/16 v14, 0xb4

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 476
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 477
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_TOP:I

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 478
    const/4 v8, 0x0

    .line 479
    .local v8, mNumOfChildItems:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v4

    .line 480
    .local v4, currentSelectIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v8

    .line 482
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetSettingListHeight()I

    move-result v14

    if-gt v8, v14, :cond_5

    .line 483
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v14, v15

    mul-int/2addr v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int v7, v14, v15

    .line 484
    .local v7, layout_height:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 485
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_HEIGHT:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v14, v15

    sub-int/2addr v14, v7

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 486
    .end local v7           #layout_height:I
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetSettingListHeight()I

    move-result v14

    if-le v8, v14, :cond_2

    .line 487
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 488
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 491
    .end local v4           #currentSelectIndex:I
    .end local v8           #mNumOfChildItems:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v4

    .line 492
    .restart local v4       #currentSelectIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v14}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    .line 493
    .local v5, firstPosId:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v14}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    .line 494
    .local v6, lastPosId:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    div-int/2addr v14, v15

    add-int/lit8 v13, v14, -0x2

    .line 495
    .local v13, visibleCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v14}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v9

    .line 497
    .local v9, menuCount:I
    if-gt v9, v13, :cond_7

    .line 498
    move v13, v9

    .line 501
    :cond_7
    if-eqz p2, :cond_8

    .line 502
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setChildMenuLocation : visibleCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", firstPosId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", lastPosId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setChildMenuLocation : currentSelectIndex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mParentAdapter.getCount() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sub-int v14, v9, v13

    if-gt v4, v14, :cond_b

    .line 505
    move v5, v4

    .line 506
    add-int v14, v4, v13

    add-int/lit8 v6, v14, -0x1

    .line 512
    :cond_8
    :goto_3
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setChildMenuLocation : firstPosId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", lastPosId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    if-ge v13, v9, :cond_e

    add-int/lit8 v14, v9, -0x1

    if-ne v6, v14, :cond_e

    .line 514
    sub-int v14, v9, v13

    if-gt v4, v14, :cond_c

    .line 515
    move v5, v4

    .line 520
    :goto_4
    const/16 v14, 0x8

    if-ge v13, v14, :cond_d

    .line 521
    sub-int v14, v4, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int v12, v14, v15

    .line 529
    .local v12, parentPos:I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->BACKGROUND_BORDER_HEIGHT:I

    add-int v1, v14, v15

    .line 532
    .local v1, childPos:I
    add-int v14, v12, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-lt v14, v15, :cond_9

    .line 533
    add-int v14, v12, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v14, v15

    sub-int/2addr v12, v14

    .line 534
    if-gez v12, :cond_9

    .line 535
    const/4 v12, 0x0

    .line 538
    :cond_9
    int-to-float v2, v12

    .line 540
    .local v2, childSettingMarginTop:F
    const/16 v14, 0x10e

    move/from16 v0, p1

    if-ne v0, v14, :cond_10

    .line 541
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_HEIGHT:I

    .line 543
    .local v11, parentHeight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v14}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v14

    if-lt v14, v13, :cond_a

    .line 544
    const/16 v14, 0x8

    if-ge v13, v14, :cond_f

    .line 545
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v14, v15

    mul-int/2addr v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->BACKGROUND_BORDER_HEIGHT:I

    add-int v11, v14, v15

    .line 551
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    add-int/2addr v14, v11

    float-to-int v15, v2

    add-int/2addr v15, v1

    sub-int/2addr v14, v15

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 552
    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    if-ge v14, v15, :cond_2

    .line 553
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 508
    .end local v1           #childPos:I
    .end local v2           #childSettingMarginTop:F
    .end local v11           #parentHeight:I
    .end local v12           #parentPos:I
    :cond_b
    sub-int v5, v9, v13

    .line 509
    add-int/lit8 v6, v9, -0x1

    goto/16 :goto_3

    .line 517
    :cond_c
    sub-int v5, v9, v13

    goto/16 :goto_4

    .line 523
    :cond_d
    sub-int v14, v4, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int v12, v14, v15

    .restart local v12       #parentPos:I
    goto/16 :goto_5

    .line 526
    .end local v12           #parentPos:I
    :cond_e
    sub-int v14, v4, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int v12, v14, v15

    .restart local v12       #parentPos:I
    goto/16 :goto_5

    .line 547
    .restart local v1       #childPos:I
    .restart local v2       #childSettingMarginTop:F
    .restart local v11       #parentHeight:I
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v14, v15

    mul-int/2addr v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER_HEIGHT:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->BACKGROUND_BORDER_HEIGHT:I

    add-int v11, v14, v15

    goto :goto_6

    .line 556
    .end local v11           #parentHeight:I
    :cond_10
    float-to-int v14, v2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_SETTING_VIEW_MARGIN_LEFT:I

    add-int/2addr v14, v15

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2
.end method

.method public showAnimation()V
    .locals 5

    .prologue
    .line 350
    const v3, 0x7f0900c9

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 351
    .local v2, rlP:Lcom/lge/camera/components/RotateLayout;
    const v3, 0x7f0900ca

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 352
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 353
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 354
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 355
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$5;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$5;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 370
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 371
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 372
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    return-void
.end method

.method public showChildSettingView()V
    .locals 4

    .prologue
    const v3, 0x7f0900ca

    .line 289
    const v2, 0x7f0900c9

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 293
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 294
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 295
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/SettingRotatableController$3;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableController$3;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 306
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 307
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    goto :goto_0
.end method

.method public startRotation(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 312
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDegree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->isNullSettingView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-nez v0, :cond_2

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 324
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->hideAnimation()V

    .line 325
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateParentList(I)V

    .line 326
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateChildList(I)V

    .line 327
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->showAnimation()V

    goto :goto_0
.end method
