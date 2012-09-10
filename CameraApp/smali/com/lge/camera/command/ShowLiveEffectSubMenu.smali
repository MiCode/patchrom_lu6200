.class public Lcom/lge/camera/command/ShowLiveEffectSubMenu;
.super Lcom/lge/camera/command/Command;
.source "ShowLiveEffectSubMenu.java"


# static fields
.field private static BOARDER_WIDTH:I = 0x0

.field private static final EFFECT:I = 0x1

.field private static final NONE_EFFECT:I


# instance fields
.field private mBackEffectImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackMenuOffset:I

.field private mBackSelectedMenu:I

.field private mFaceEffectImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceMenuOffset:I

.field private mFaceSelectedMenu:I

.field private mMenuIndex:I

.field private mOnBackEffectClickListener:Landroid/view/View$OnClickListener;

.field private mOnFaceEffectClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xa

    sput v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->BOARDER_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "mediator"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 34
    iput v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    .line 35
    iput v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackMenuOffset:I

    .line 37
    iput v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    .line 38
    iput v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I

    .line 300
    new-instance v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;-><init>(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)V

    iput-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mOnFaceEffectClickListener:Landroid/view/View$OnClickListener;

    .line 331
    new-instance v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;-><init>(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)V

    iput-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mOnBackEffectClickListener:Landroid/view/View$OnClickListener;

    .line 45
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->addImageToArray()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hide()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    return p1
.end method

.method static synthetic access$202(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    return p1
.end method

.method static synthetic access$302(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackMenuOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I

    return v0
.end method

.method static synthetic access$402(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I

    return p1
.end method

.method static synthetic access$500(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mMenuIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addImageToArray()V
    .locals 3

    .prologue
    const v2, 0x7f020198

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    .line 86
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02011f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02011e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020122

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020123

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    .line 95
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02011a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02011b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02011d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02011c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method private hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    const-string v0, "CameraApp"

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 291
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v2}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 292
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mMenuIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 293
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 295
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 296
    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 297
    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 298
    return-void
.end method

.method private initializeMenu()V
    .locals 18

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v15

    const-string v16, "key_live_effect"

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mMenuIndex:I

    .line 109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mMenuIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 111
    .local v8, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v8, :cond_1

    .line 112
    const-string v15, "CameraApp"

    const-string v16, "pref is null !!"

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    return-void

    .line 115
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v16, "key_live_effect"

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, effectSelection:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 120
    const-string v15, "off"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 121
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    .line 122
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackMenuOffset:I

    .line 123
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    .line 124
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mMenuIndex:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIcon(II)V

    .line 158
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    .local v2, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v2, v15, :cond_8

    .line 159
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v3, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 160
    .local v3, iv:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    const v15, 0x7f020189

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 163
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    if-ne v15, v2, :cond_3

    .line 164
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 166
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mOnFaceEffectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0a01ec

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0a01ed

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v6, param1:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0a01ee

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    mul-int/2addr v15, v4

    iput v15, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 172
    const v15, 0x7f090077

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v13, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    .local v13, tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0a01ec

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    int-to-float v14, v15

    .line 177
    .local v14, width:F
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v15

    aget-object v15, v15, v2

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, menuString:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    .line 179
    .local v12, tp:Landroid/text/TextPaint;
    const/high16 v15, 0x3f80

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 180
    const/4 v15, -0x1

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    invoke-virtual {v12, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 183
    .local v11, textWidth:F
    sget v15, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->BOARDER_WIDTH:I

    int-to-float v15, v15

    sub-float v15, v14, v15

    cmpl-float v15, v11, v15

    if-lez v15, :cond_7

    .line 184
    sget v15, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->BOARDER_WIDTH:I

    int-to-float v15, v15

    sub-float v15, v14, v15

    div-float v9, v15, v11

    .line 185
    .local v9, scale:F
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 190
    .end local v9           #scale:F
    :goto_2
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0a01e4

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 194
    const/16 v15, 0x11

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 196
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0a01ec

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v7, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v7, param2:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0a01ee

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    mul-int/2addr v15, v4

    iput v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 200
    const v15, 0x7f090078

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v13, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 127
    .end local v2           #i:I
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #j:I
    .end local v5           #menuString:Ljava/lang/String;
    .end local v6           #param1:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #param2:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11           #textWidth:F
    .end local v12           #tp:Landroid/text/TextPaint;
    .end local v13           #tv:Landroid/widget/TextView;
    .end local v14           #width:F
    :cond_4
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    array-length v10, v15

    .line 128
    .local v10, size:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v10, :cond_2

    .line 129
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    aget-object v15, v15, v2

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 130
    const/4 v15, 0x6

    if-gt v2, v15, :cond_5

    .line 131
    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    .line 132
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    .line 134
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I

    .line 135
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackMenuOffset:I

    goto/16 :goto_0

    .line 138
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    .line 139
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    .line 141
    add-int/lit8 v15, v2, -0x6

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I

    .line 142
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackMenuOffset:I

    .line 128
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 187
    .end local v10           #size:I
    .restart local v3       #iv:Landroid/widget/ImageView;
    .restart local v4       #j:I
    .restart local v5       #menuString:Ljava/lang/String;
    .restart local v6       #param1:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11       #textWidth:F
    .restart local v12       #tp:Landroid/text/TextPaint;
    .restart local v13       #tv:Landroid/widget/TextView;
    .restart local v14       #width:F
    :cond_7
    const/high16 v15, 0x3f80

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_2

    .line 214
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v5           #menuString:Ljava/lang/String;
    .end local v6           #param1:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11           #textWidth:F
    .end local v12           #tp:Landroid/text/TextPaint;
    .end local v13           #tv:Landroid/widget/TextView;
    .end local v14           #width:F
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PreviewController;->IsSensorSupportBackdropper()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 230
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackMenuOffset:I

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v2, v15, :cond_0

    .line 231
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v3, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 232
    .restart local v3       #iv:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    const v15, 0x7f020189

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 235
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I

    if-ne v15, v2, :cond_a

    .line 236
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 240
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mOnBackEffectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0a01ec

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0a01ed

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    .restart local v6       #param1:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0a01ee

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    mul-int/2addr v15, v4

    iput v15, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 245
    const v15, 0x7f09007b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v13, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 249
    .restart local v13       #tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0a01ec

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    int-to-float v14, v15

    .line 250
    .restart local v14       #width:F
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int v16, v16, v2

    add-int/lit8 v16, v16, -0x1

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 251
    .restart local v5       #menuString:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    .line 252
    .restart local v12       #tp:Landroid/text/TextPaint;
    const/high16 v15, 0x3f80

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 253
    const/4 v15, -0x1

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    invoke-virtual {v12, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 256
    .restart local v11       #textWidth:F
    sget v15, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->BOARDER_WIDTH:I

    int-to-float v15, v15

    sub-float v15, v14, v15

    cmpl-float v15, v11, v15

    if-lez v15, :cond_b

    .line 257
    sget v15, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->BOARDER_WIDTH:I

    int-to-float v15, v15

    sub-float v15, v14, v15

    div-float v9, v15, v11

    .line 258
    .restart local v9       #scale:F
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 263
    .end local v9           #scale:F
    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I

    if-eqz v15, :cond_c

    if-nez v2, :cond_c

    .line 264
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :goto_7
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0a01e4

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 269
    const/16 v15, 0x11

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 271
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0a01ec

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v7, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    .restart local v7       #param2:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v15}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0a01ee

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    mul-int/2addr v15, v4

    iput v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 275
    const v15, 0x7f09007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v13, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 238
    .end local v5           #menuString:Ljava/lang/String;
    .end local v6           #param1:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #param2:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11           #textWidth:F
    .end local v12           #tp:Landroid/text/TextPaint;
    .end local v13           #tv:Landroid/widget/TextView;
    .end local v14           #width:F
    :cond_a
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_5

    .line 260
    .restart local v5       #menuString:Ljava/lang/String;
    .restart local v6       #param1:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11       #textWidth:F
    .restart local v12       #tp:Landroid/text/TextPaint;
    .restart local v13       #tv:Landroid/widget/TextView;
    .restart local v14       #width:F
    :cond_b
    const/high16 v15, 0x3f80

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_6

    .line 266
    :cond_c
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method private show()V
    .locals 3

    .prologue
    .line 280
    const-string v0, "CameraApp"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->startSubMenuRotation(I)V

    .line 283
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "live_effect"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->showHelpGuidePopup(Ljava/lang/String;I)Z

    .line 286
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    const/16 v4, 0x12

    const/4 v3, 0x1

    .line 50
    const-string v1, "CameraApp"

    const-string v2, "ShowLiveEffectSubMenu is EXECUTE !!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/lge/camera/EffectsRecorder;->isEffectSupported(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    const-string v1, "CameraApp"

    const-string v2, "NOT WORKING!!! live effect does not support in framework!!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 61
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 65
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->initializeMenu()V

    .line 67
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v4}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 68
    const v1, 0x7f090073

    invoke-virtual {p0, v1}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 69
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hide()V

    goto :goto_0

    .line 71
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->show()V

    .line 73
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_live_effect"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, menuIndex:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 76
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/PreviewPanelController;->showHelpSubButton(Z)V

    .line 78
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    goto :goto_0
.end method
