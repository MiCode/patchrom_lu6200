.class Landroid/widget/TextView$ActionPopupWindow;
.super Landroid/widget/TextView$PinnedPopupWindow;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# instance fields
.field private final POPUP_TEXT_LAYOUT:I

.field private mAddToDictionaryTextView:Landroid/widget/TextView;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mPasteTextView:Landroid/widget/TextView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mTracks:Landroid/view/ViewGroup;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 10908
    iput-object p1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView$PinnedPopupWindow;-><init>(Landroid/widget/TextView;)V

    .line 10911
    const v0, 0x2030004

    iput v0, p0, Landroid/widget/TextView$ActionPopupWindow;->POPUP_TEXT_LAYOUT:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10908
    invoke-direct {p0, p1}, Landroid/widget/TextView$ActionPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method private getPositionYAboveHandle(II)I
    .locals 3
    .parameter "offset"
    .parameter "parentPosition"

    .prologue
    .line 11195
    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 11196
    .local v0, line:I
    invoke-virtual {p0, v0}, Landroid/widget/TextView$ActionPopupWindow;->getVerticalLocalPosition(I)I

    move-result v1

    .line 11197
    .local v1, positionY:I
    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v2}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)I

    move-result v2

    add-int/2addr v1, v2

    .line 11198
    add-int/2addr v1, p2

    .line 11199
    return v1
.end method

.method private getPositionYBelowHandle(II)I
    .locals 5
    .parameter "offset"
    .parameter "parentPosition"

    .prologue
    .line 11206
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 11207
    .local v1, line:I
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 11208
    .local v2, positionY:I
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v3}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)I

    move-result v3

    add-int/2addr v2, v3

    .line 11209
    add-int/2addr v2, p2

    .line 11210
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v4}, Landroid/widget/TextView;->access$6100(Landroid/widget/TextView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11211
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 11212
    return v2
.end method

.method private isEntireTextSelected()Z
    .locals 3

    .prologue
    .line 11131
    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 11132
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 11133
    .local v0, selectionEnd:I
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/widget/TextView;->access$800(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 5
    .parameter "parentPosition"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 11241
    const/4 v0, 0x0

    .line 11242
    .local v0, positionY:I
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    #calls: Landroid/widget/TextView;->isOffsetVisible(I)Z
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    #calls: Landroid/widget/TextView;->isOffsetVisible(I)Z
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11243
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/widget/TextView$ActionPopupWindow;->getPositionYAboveHandle(II)I

    move-result v0

    .line 11244
    iput-boolean v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->isStartHandle:Z

    .line 11245
    if-gez v0, :cond_0

    .line 11246
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/widget/TextView$ActionPopupWindow;->getPositionYBelowHandle(II)I

    move-result v0

    .line 11247
    iput-boolean v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->isStartHandle:Z

    .line 11264
    :cond_0
    :goto_0
    return v0

    .line 11249
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    #calls: Landroid/widget/TextView;->isOffsetVisible(I)Z
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11250
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/widget/TextView$ActionPopupWindow;->getPositionYAboveHandle(II)I

    move-result v0

    .line 11251
    iput-boolean v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->isStartHandle:Z

    .line 11252
    if-gez v0, :cond_0

    .line 11253
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/widget/TextView$ActionPopupWindow;->getPositionYBelowHandle(II)I

    move-result v0

    .line 11254
    iput-boolean v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->isStartHandle:Z

    goto :goto_0

    .line 11256
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    #calls: Landroid/widget/TextView;->isOffsetVisible(I)Z
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11257
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/widget/TextView$ActionPopupWindow;->getPositionYBelowHandle(II)I

    move-result v0

    .line 11258
    iput-boolean v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->isStartHandle:Z

    goto :goto_0

    .line 11260
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/widget/TextView$ActionPopupWindow;->getPositionYBelowHandle(II)I

    move-result v0

    .line 11261
    iput-boolean v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->isStartHandle:Z

    goto :goto_0
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 10935
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 10937
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 10940
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 10942
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 11219
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 11224
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const v10, 0x2030004

    const/4 v9, 0x0

    .line 10968
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/TextView;->access$5700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 10976
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v7, 0x2030003

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 10977
    iget-object v7, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v8, 0x2090040

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    .line 10978
    iget-object v7, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v8, 0x10805d9

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 10980
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 10985
    .local v6, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 10986
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10988
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10990
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v8, 0x104000d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 10991
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10993
    invoke-virtual {v1, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 10994
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10996
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10998
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v8, 0x1040003

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 10999
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11001
    invoke-virtual {v1, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 11002
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11004
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11006
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v8, 0x1040001

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 11007
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11011
    invoke-virtual {v1, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 11012
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11014
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11016
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v8, 0x104000b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 11017
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11021
    invoke-virtual {v1, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mAddToDictionaryTextView:Landroid/widget/TextView;

    .line 11022
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mAddToDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11024
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/widget/TextView$ActionPopupWindow;->mAddToDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11026
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mAddToDictionaryTextView:Landroid/widget/TextView;

    const v8, 0x20b00b7

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 11027
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mAddToDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11031
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomMode:Landroid/view/ActionMode;
    invoke-static {v7}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Landroid/view/ActionMode;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 11032
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomMode:Landroid/view/ActionMode;
    invoke-static {v7}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Landroid/view/ActionMode;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 11033
    .local v2, m:Landroid/view/Menu;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 11034
    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 11035
    .local v3, mi:Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 11036
    .local v4, text:Ljava/lang/CharSequence;
    invoke-virtual {v1, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 11037
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11038
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11039
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11040
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11041
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11033
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11046
    .end local v0           #i:I
    .end local v2           #m:Landroid/view/Menu;
    .end local v3           #mi:Landroid/view/MenuItem;
    .end local v4           #text:Ljava/lang/CharSequence;
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method protected measureContent()V
    .locals 7

    .prologue
    const/high16 v6, -0x8000

    .line 11270
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 11271
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 11273
    .local v1, horizontalMeasure:I
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 11276
    .local v3, verticalMeasure:I
    const/4 v4, 0x0

    .line 11278
    .local v4, width:I
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, -0x2

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11279
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 11280
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 11284
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 11288
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 11289
    .local v2, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 11290
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 11291
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 11292
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v6, v6, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 11295
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 11296
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 11147
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 11148
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 11149
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 11190
    :cond_0
    :goto_0
    return-void

    .line 11162
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 11163
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 11164
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideCursorControllers()V
    invoke-static {v0}, Landroid/widget/TextView;->access$6000(Landroid/widget/TextView;)V

    .line 11165
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    goto :goto_0

    .line 11166
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 11167
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 11168
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    goto :goto_0

    .line 11169
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mAddToDictionaryTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 11170
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v1, 0x102002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 11171
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    goto :goto_0

    .line 11172
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    .line 11173
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v1, 0x102001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 11175
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11176
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/TextView$ActionPopupWindow;->isEntireTextSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, -0x777778

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11180
    invoke-super {p0}, Landroid/widget/TextView$PinnedPopupWindow;->show()V

    goto :goto_0

    .line 11176
    :cond_5
    const/high16 v0, -0x100

    goto :goto_1

    .line 11184
    :cond_6
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 11185
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11186
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v1

    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomMode:Landroid/view/ActionMode;
    invoke-static {v0}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v1, v2, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    goto/16 :goto_0
.end method

.method public show()V
    .locals 8

    .prologue
    const v3, -0x777778

    const/high16 v2, -0x100

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 11058
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$5800(Landroid/widget/TextView;)Z

    move-result v0

    .line 11073
    .local v0, canPaste:Z
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v7, 0x209003f

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    .line 11074
    .local v1, scrollView:Landroid/widget/HorizontalScrollView;
    if-eqz v1, :cond_0

    .line 11075
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 11077
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsInsertionCursor:Z
    invoke-static {v4}, Landroid/widget/TextView;->access$5900(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11078
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11079
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11080
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11081
    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11082
    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11083
    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11084
    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->mAddToDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11125
    :goto_1
    invoke-super {p0}, Landroid/widget/TextView$PinnedPopupWindow;->show()V

    .line 11126
    return-void

    :cond_1
    move v2, v3

    .line 11080
    goto :goto_0

    .line 11088
    :cond_2
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mInputType:I
    invoke-static {v4}, Landroid/widget/TextView;->access$1800(Landroid/widget/TextView;)I

    move-result v4

    #calls: Landroid/widget/TextView;->isPasswordInputType(I)Z
    invoke-static {v4}, Landroid/widget/TextView;->access$1900(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11089
    iget-object v7, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11090
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11091
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11092
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11093
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mAddToDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11106
    :goto_3
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/TextView$ActionPopupWindow;->isEntireTextSelected()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x1

    :cond_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11108
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/TextView$ActionPopupWindow;->isEntireTextSelected()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    move v4, v6

    .line 11089
    goto :goto_2

    .line 11097
    :cond_5
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    move v6, v5

    :cond_6
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11098
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11099
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11100
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11101
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mAddToDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v3, v2

    .line 11108
    goto :goto_4
.end method
