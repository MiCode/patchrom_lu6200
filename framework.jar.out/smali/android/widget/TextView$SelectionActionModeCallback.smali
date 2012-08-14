.class Landroid/widget/TextView$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 10772
    iput-object p1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10772
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 10881
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10883
    const/4 v0, 0x1

    .line 10885
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 10776
    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/TextView;->access$4900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v7

    sget-object v11, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v7, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 10779
    .local v6, styledAttributes:Landroid/content/res/TypedArray;
    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x1110030

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 10782
    .local v1, allowText:Z
    if-eqz v1, :cond_0

    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/TextView;->access$5000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v7

    const v11, 0x10403af

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {p1, v7}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 10784
    invoke-virtual {p1, v8}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 10791
    const/4 v7, 0x3

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 10831
    .local v5, selectAllIconId:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 10833
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v4

    .line 10835
    .local v4, prev_menuitem:I
    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v7}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 10836
    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v7}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v7

    invoke-interface {v7, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 10839
    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mIsCustomActionMode:Z
    invoke-static {v7, v10}, Landroid/widget/TextView;->access$5202(Landroid/widget/TextView;Z)Z

    move v7, v9

    .line 10867
    :goto_1
    return v7

    .end local v4           #prev_menuitem:I
    .end local v5           #selectAllIconId:I
    :cond_0
    move-object v7, v8

    .line 10782
    goto :goto_0

    .line 10847
    .restart local v4       #prev_menuitem:I
    .restart local v5       #selectAllIconId:I
    :cond_1
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v7

    if-ne v4, v7, :cond_6

    .line 10849
    :cond_2
    const/4 v0, 0x0

    .line 10850
    .local v0, a:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 10851
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 10852
    .local v3, mi:Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 10853
    :cond_3
    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mIsCustomActionMode:Z
    invoke-static {v7, v10}, Landroid/widget/TextView;->access$5202(Landroid/widget/TextView;Z)Z

    move v7, v10

    .line 10854
    goto :goto_1

    .line 10850
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 10858
    .end local v3           #mi:Landroid/view/MenuItem;
    :cond_5
    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mCustomMode:Landroid/view/ActionMode;
    invoke-static {v7, p1}, Landroid/widget/TextView;->access$5302(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 10859
    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mIsCustomActionMode:Z
    invoke-static {v7, v9}, Landroid/widget/TextView;->access$5202(Landroid/widget/TextView;Z)Z

    move v7, v9

    .line 10860
    goto :goto_1

    .line 10865
    .end local v0           #a:Z
    .end local v2           #i:I
    :cond_6
    iget-object v7, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mIsCustomActionMode:Z
    invoke-static {v7, v10}, Landroid/widget/TextView;->access$5202(Landroid/widget/TextView;Z)Z

    move v7, v9

    .line 10867
    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 10890
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10891
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 10893
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$800(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10895
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$5400(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10896
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$5400(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 10899
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Landroid/widget/TextView;->access$5502(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 10902
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mCustomMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Landroid/widget/TextView;->access$5302(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 10905
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 10873
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10874
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 10876
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
