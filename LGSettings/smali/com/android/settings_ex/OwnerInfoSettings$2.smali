.class Lcom/android/settings_ex/OwnerInfoSettings$2;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OwnerInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OwnerInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/OwnerInfoSettings$2;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "arg0"

    .prologue
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings$2;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    #getter for: Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/OwnerInfoSettings;->access$100(Lcom/android/settings_ex/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, ownerText:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, length:I
    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings$2;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0809fa

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 183
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 173
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 167
    return-void
.end method
