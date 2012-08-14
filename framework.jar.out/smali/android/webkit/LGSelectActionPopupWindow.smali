.class public Landroid/webkit/LGSelectActionPopupWindow;
.super Landroid/webkit/LGPopupWindow;
.source "LGSelectActionPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x2030004


# instance fields
.field private mClientContext:Landroid/content/Context;

.field private mCopyView:Landroid/widget/TextView;

.field private mFindView:Landroid/widget/TextView;

.field private mSearchView:Landroid/widget/TextView;

.field private mSelectAllView:Landroid/widget/TextView;

.field private mShareView:Landroid/widget/TextView;

.field private mTracks:Landroid/view/ViewGroup;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "c"
    .parameter "v"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/webkit/LGPopupWindow;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    .line 46
    return-void
.end method


# virtual methods
.method protected createPopupWindow(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 53
    return-void
.end method

.method protected getLocalPosition()Landroid/graphics/Point;
    .locals 10

    .prologue
    .line 104
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 105
    .local v1, point:Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 107
    .local v2, selection:Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/webkit/LGPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    .line 108
    .local v7, width:I
    iget-object v8, p0, Landroid/webkit/LGPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 110
    .local v0, height:I
    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSelectionRegion()Landroid/graphics/Rect;

    move-result-object v2

    .line 113
    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getLeft()I

    move-result v4

    .line 114
    .local v4, webviewLeft:I
    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getRight()I

    move-result v5

    .line 115
    .local v5, webviewRight:I
    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getTop()I

    move-result v6

    .line 116
    .local v6, webviewTop:I
    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getBottom()I

    move-result v3

    .line 119
    .local v3, webviewBottom:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Point;->x:I

    .line 120
    iget v8, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v7

    if-le v8, v5, :cond_0

    .line 121
    sub-int v8, v5, v7

    iput v8, v1, Landroid/graphics/Point;->x:I

    .line 123
    :cond_0
    iget v8, v1, Landroid/graphics/Point;->x:I

    if-ge v8, v4, :cond_1

    .line 124
    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 128
    :cond_1
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v6, :cond_2

    iget v8, v2, Landroid/graphics/Rect;->top:I

    if-le v8, v3, :cond_3

    .line 129
    :cond_2
    const/4 v8, -0x1

    iput v8, v1, Landroid/graphics/Point;->y:I

    .line 140
    :goto_0
    return-object v1

    .line 131
    :cond_3
    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v6

    if-ge v0, v8, :cond_4

    .line 132
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iput v8, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 133
    :cond_4
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v3, v8

    if-ge v0, v8, :cond_5

    .line 134
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iput v8, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 136
    :cond_5
    sub-int v8, v3, v6

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    div-int/lit8 v9, v0, 0x2

    sub-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method protected initContentView()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const v5, 0x2030004

    const/4 v4, 0x0

    .line 57
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 60
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x2030003

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroid/webkit/LGPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 62
    iget-object v2, p0, Landroid/webkit/LGPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v3, 0x2090040

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    .line 64
    iget-object v2, p0, Landroid/webkit/LGPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v3, 0x10805d9

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 67
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    .local v1, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    .line 72
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    const v3, 0x104000d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    .line 78
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    const v3, 0x1040001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    const v3, 0x1040480

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    .line 90
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    const v3, 0x1040481

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    .line 96
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    const v3, 0x1040482

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 185
    :goto_0
    :pswitch_0
    return v6

    .line 147
    :pswitch_1
    const v3, -0x3c2d29

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_1

    .line 151
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->selectAll()V

    .line 177
    :cond_0
    :goto_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_2

    .line 153
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->copySelection()Z

    .line 154
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->selectionDone()V

    .line 155
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 156
    :cond_2
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_3

    .line 157
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, selection:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Browser;->sendStringEx(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->selectionDone()V

    .line 163
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 164
    .end local v2           #selection:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_4

    .line 165
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, sel:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->selectionDone()V

    .line 167
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v1, v5}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    .line 168
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 169
    .end local v1           #sel:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_0

    .line 170
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->selectionDone()V

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v3, "new_search"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    const-string/jumbo v3, "query"

    iget-object v4, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 175
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 180
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
