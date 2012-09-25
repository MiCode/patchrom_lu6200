.class Lcom/android/settings_ex/UserDictionarySettings$8;
.super Landroid/text/InputFilter$LengthFilter;
.source "UserDictionarySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UserDictionarySettings;->setInputFilter(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Lcom/android/settings_ex/UserDictionarySettings;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserDictionarySettings;ILandroid/widget/EditText;)V
    .locals 2
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/settings_ex/UserDictionarySettings$8;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    iput-object p3, p0, Lcom/android/settings_ex/UserDictionarySettings$8;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 940
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$8;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$8;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 944
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int v2, p6, p5

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v1, 0x32

    .line 946
    .local v0, keep:I
    if-gtz v0, :cond_0

    .line 947
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings$8;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings_ex/UserDictionarySettings$8;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 948
    const-string v1, ""

    .line 953
    :goto_0
    return-object v1

    .line 949
    :cond_0
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_1

    .line 950
    const/4 v1, 0x0

    goto :goto_0

    .line 952
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings$8;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings_ex/UserDictionarySettings$8;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 953
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
