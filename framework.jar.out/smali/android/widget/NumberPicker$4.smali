.class Landroid/widget/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->isScrollFinished:Z
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    #setter for: Landroid/widget/NumberPicker;->isScrollFinished:Z
    invoke-static {v1, v2}, Landroid/widget/NumberPicker;->access$302(Landroid/widget/NumberPicker;Z)Z

    .line 663
    :goto_0
    return-void

    .line 651
    :cond_0
    if-eqz p2, :cond_1

    .line 652
    iget-object v1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 655
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 656
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 657
    iget-object v1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 660
    :cond_2
    iget-object v1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 661
    iget-object v1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v1, p1}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method
