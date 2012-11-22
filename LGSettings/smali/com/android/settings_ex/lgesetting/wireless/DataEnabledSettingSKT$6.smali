.class Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$6;
.super Ljava/lang/Object;
.source "DataEnabledSettingSKT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->createCustomViewDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$6;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$6;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mAskAtBootChecked:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$6;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mAskAtBootChecked:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$6;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08087a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$6$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$6$1;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 146
    :cond_0
    return-void
.end method
