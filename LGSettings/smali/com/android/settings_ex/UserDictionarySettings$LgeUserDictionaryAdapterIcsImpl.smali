.class Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LgeUserDictionaryAdapterIcsImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UserDictionarySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/UserDictionarySettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/UserDictionarySettings;Lcom/android/settings_ex/UserDictionarySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;-><init>(Lcom/android/settings_ex/UserDictionarySettings;)V

    return-void
.end method


# virtual methods
.method public onPostActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    const-string v1, "CONFI_ORIENTATION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/settings_ex/UserDictionarySettings;->mOrientationConfig:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/UserDictionarySettings;->access$902(Lcom/android/settings_ex/UserDictionarySettings;I)I

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    const-string v1, "CURRENT_WORD"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/UserDictionarySettings;->mCurrentWord:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/UserDictionarySettings;->access$702(Lcom/android/settings_ex/UserDictionarySettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1032
    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    .line 1008
    const-string v0, "INSTANCE_KEY_DIALOG_STATUS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1010
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    const-string v1, "INSTANCE_KEY_DELETE_WORD"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/settings_ex/UserDictionarySettings;->deleteWord(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/UserDictionarySettings;->access$400(Lcom/android/settings_ex/UserDictionarySettings;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1013
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    #calls: Lcom/android/settings_ex/UserDictionarySettings;->existDlgShow()V
    invoke-static {v0}, Lcom/android/settings_ex/UserDictionarySettings;->access$800(Lcom/android/settings_ex/UserDictionarySettings;)V

    goto :goto_0

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPostCreateDialog(ILandroid/app/AlertDialog;Landroid/view/View;)V
    .locals 7
    .parameter "id"
    .parameter "dialog"
    .parameter "content"

    .prologue
    .line 1055
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1056
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f0b002d

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1058
    .local v1, editText:Landroid/widget/EditText;
    new-instance v4, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;

    iget-object v5, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-direct {v4, v5, p2, p3}, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;-><init>(Lcom/android/settings_ex/UserDictionarySettings;Landroid/app/AlertDialog;Landroid/view/View;)V

    .local v4, listener:Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;
    iget-object v5, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    iput-object v4, v5, Lcom/android/settings_ex/UserDictionarySettings;->mListener:Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p2, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v5, -0x1

    const v6, 0x104000a

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1064
    const/4 v5, -0x2

    const/high16 v6, 0x104

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v5, v1}, Lcom/android/settings_ex/UserDictionarySettings;->setInputFilter(Landroid/widget/EditText;)V

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x25

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v5, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .local v3, immActivity:Landroid/app/Activity;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const-string v5, "input_method"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1077
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1078
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1081
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onPostDestroy()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    iget-object v0, v0, Lcom/android/settings_ex/UserDictionarySettings;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    iget-object v0, v0, Lcom/android/settings_ex/UserDictionarySettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    iget-object v0, v0, Lcom/android/settings_ex/UserDictionarySettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings_ex/UserDictionarySettings;->mAlert:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onPostPause()V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    #calls: Lcom/android/settings_ex/UserDictionarySettings;->getOrientationConfig()I
    invoke-static {v1}, Lcom/android/settings_ex/UserDictionarySettings;->access$1000(Lcom/android/settings_ex/UserDictionarySettings;)I

    move-result v1

    #calls: Lcom/android/settings_ex/UserDictionarySettings;->setOrientationConfig(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/UserDictionarySettings;->access$1100(Lcom/android/settings_ex/UserDictionarySettings;I)V

    .line 1040
    return-void
.end method

.method public onPostSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1091
    if-eqz p1, :cond_0

    .line 1093
    const-string v0, "CONFI_ORIENTATION"

    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    #getter for: Lcom/android/settings_ex/UserDictionarySettings;->mOrientationConfig:I
    invoke-static {v1}, Lcom/android/settings_ex/UserDictionarySettings;->access$900(Lcom/android/settings_ex/UserDictionarySettings;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1095
    const-string v0, "INSTANCE_KEY_DIALOG_STATUS"

    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    #getter for: Lcom/android/settings_ex/UserDictionarySettings;->dig_status:I
    invoke-static {v1}, Lcom/android/settings_ex/UserDictionarySettings;->access$200(Lcom/android/settings_ex/UserDictionarySettings;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1096
    const-string v0, "INSTANCE_KEY_DELETE_WORD"

    invoke-static {}, Lcom/android/settings_ex/UserDictionarySettings;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_0
    return-void
.end method

.method public onPreActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 1024
    return-void
.end method

.method public onPreCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 1001
    return-void
.end method

.method public onPreCreateDialog(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1052
    return-void
.end method

.method public onPreDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/UserDictionarySettings;->sSymbolString:Ljava/lang/String;

    return-void
.end method

.method public onPrePause()V
    .locals 0

    .prologue
    .line 1044
    return-void
.end method

.method public onPreResume()V
    .locals 0

    .prologue
    .line 1036
    return-void
.end method

.method public onPreSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 1087
    return-void
.end method
