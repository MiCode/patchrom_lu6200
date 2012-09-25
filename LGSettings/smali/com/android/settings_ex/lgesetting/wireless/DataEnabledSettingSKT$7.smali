.class Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$7;
.super Ljava/lang/Object;
.source "DataEnabledSettingSKT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->showAlertDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$7;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    iput-boolean p2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$7;->val$enabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$7;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioEnabledChecked:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->access$400(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)Landroid/widget/CheckedTextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$7;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$7;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioDisabledChecked:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->access$500(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)Landroid/widget/CheckedTextView;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$7;->val$enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 161
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
