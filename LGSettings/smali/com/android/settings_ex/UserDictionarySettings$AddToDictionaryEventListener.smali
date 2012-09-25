.class Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToDictionaryEventListener"
.end annotation


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mEditText:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings_ex/UserDictionarySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserDictionarySettings;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter "dialog"
    .parameter "content"

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 839
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    .line 841
    if-eqz p3, :cond_0

    .line 843
    const v2, 0x7f0b00ac

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 844
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x7f0b002d

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 845
    .local v0, editText:Landroid/widget/EditText;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    .line 846
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mTextView:Ljava/lang/ref/WeakReference;

    .line 847
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mContext:Ljava/lang/ref/WeakReference;

    .line 849
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updateButtonState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 874
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_1

    move-object v0, v7

    .line 876
    .local v0, dialog:Landroid/app/AlertDialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 877
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_2

    move-object v1, v7

    .line 878
    .local v1, editText:Landroid/widget/EditText;
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mTextView:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_3

    move-object v4, v7

    .line 883
    .local v4, textView:Landroid/widget/TextView;
    :goto_2
    if-nez v1, :cond_4

    .line 884
    const-string v5, ""

    .line 894
    .local v5, word:Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    const v7, 0x7f080053

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/UserDictionarySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings_ex/UserDictionarySettings;->sSymbolString:Ljava/lang/String;

    .line 896
    #calls: Lcom/android/settings_ex/UserDictionarySettings;->isAcceptableWord(Ljava/lang/String;Landroid/widget/TextView;)Z
    invoke-static {v5, v4}, Lcom/android/settings_ex/UserDictionarySettings;->access$600(Ljava/lang/String;Landroid/widget/TextView;)Z

    move-result v3

    .line 897
    .local v3, positiveButtonEnable:Z
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 898
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    #setter for: Lcom/android/settings_ex/UserDictionarySettings;->mCurrentWord:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/settings_ex/UserDictionarySettings;->access$702(Lcom/android/settings_ex/UserDictionarySettings;Ljava/lang/String;)Ljava/lang/String;

    .line 900
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v3           #positiveButtonEnable:Z
    .end local v4           #textView:Landroid/widget/TextView;
    .end local v5           #word:Ljava/lang/String;
    :cond_0
    return-void

    .line 874
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlertDialog;

    move-object v0, v6

    goto :goto_0

    .line 877
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    move-object v1, v6

    goto :goto_1

    .line 878
    .restart local v1       #editText:Landroid/widget/EditText;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mTextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v4, v6

    goto :goto_2

    .line 886
    .restart local v4       #textView:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 887
    .local v2, editable:Landroid/text/Editable;
    if-nez v2, :cond_5

    .line 888
    const-string v5, ""

    .restart local v5       #word:Ljava/lang/String;
    goto :goto_3

    .line 890
    .end local v5           #word:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #word:Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->updateButtonState()V

    .line 860
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 855
    return-void
.end method

.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 905
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    move-object v0, v4

    .line 906
    .local v0, dialog:Landroid/app/AlertDialog;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2

    move-object v1, v4

    .line 908
    .local v1, editText:Landroid/widget/EditText;
    :goto_1
    if-ne p1, v0, :cond_0

    .line 909
    packed-switch p2, :pswitch_data_0

    .line 930
    :cond_0
    :goto_2
    return-void

    .line 905
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #editText:Landroid/widget/EditText;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlertDialog;

    move-object v0, v3

    goto :goto_0

    .line 906
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v1, v3

    goto :goto_1

    .line 911
    .restart local v1       #editText:Landroid/widget/EditText;
    :pswitch_0
    if-eqz v1, :cond_3

    .line 913
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 914
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 917
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/UserDictionarySettings;->onAddOrEditFinished(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/UserDictionarySettings;->access$100(Lcom/android/settings_ex/UserDictionarySettings;Ljava/lang/String;)V

    .line 922
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    #getter for: Lcom/android/settings_ex/UserDictionarySettings;->mAutoReturn:Z
    invoke-static {v3}, Lcom/android/settings_ex/UserDictionarySettings;->access$000(Lcom/android/settings_ex/UserDictionarySettings;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 923
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    #getter for: Lcom/android/settings_ex/UserDictionarySettings;->dig_status:I
    invoke-static {v3}, Lcom/android/settings_ex/UserDictionarySettings;->access$200(Lcom/android/settings_ex/UserDictionarySettings;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 924
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_2

    .line 909
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 867
    invoke-direct {p0}, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->updateButtonState()V

    .line 871
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 852
    return-void
.end method
